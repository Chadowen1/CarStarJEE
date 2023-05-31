package Controller;

import EJB.AccountEJB;
import EJB.AdminEJB;
import EJB.UserEJB;
import io.jsonwebtoken.Jwts;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.security.Key;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/authentication")
public class AuthenticationServlet extends HttpServlet {

    @EJB
    private AdminEJB adminEJB;
    @EJB
    private UserEJB userEJB;
    @EJB
    private AccountEJB accountEJB;
    private static final String SECRET_KEY = "CXUvEX9zzs3N8Ru6nh7wa63P9QpIHBHZsMcyBvJ9G0PpfDtgvc2XW4wKH7mcAjy";
    private static final String SIGNING_ALGORITHM = "HMACSHA256";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");
        if (action.contentEquals("adminlogin")){

            String admin_id = req.getParameter("admin_id");
            String admin_pass = req.getParameter("admin_pass");
            boolean authenticated = adminEJB.authenticate(admin_id, admin_pass);

            if (!authenticated){
                String errorMsg = "Invalid Credentials!";
                req.setAttribute("errorMsg", errorMsg);
                req.getRequestDispatcher("adminlogin.jsp").forward(req, resp);
            } else {
                String AdminjwtToken = createJwtToken(admin_id);
                req.getSession(true).setAttribute("AdminjwtToken", AdminjwtToken);

                if (!resp.isCommitted()){
                    resp.sendRedirect("dashboard.jsp");
                }
            }
        } else if (action.equals("register")) {

            String firstName = req.getParameter("first_name");
            String lastName = req.getParameter("last_name");
            String email = req.getParameter("email");
            String pass = req.getParameter("password");
            String confirm_pass = req.getParameter("confirm_password");

            if (!pass.equals(confirm_pass)) {
                String errorMsg = "Passwords do not match!";
                req.setAttribute("errorMsg", errorMsg);
                req.getRequestDispatcher("Register.jsp").forward(req, resp);
            } else if (userEJB.isEmailUsed(email)) {
                String errorMsg = "Email Already Used!";
                req.setAttribute("errorMsg", errorMsg);
                req.getRequestDispatcher("Register.jsp").forward(req, resp);
            } else {
                if (!resp.isCommitted()) {
                    int userId = userEJB.createUser(firstName, lastName, email);
                    accountEJB.createAccount(userId, pass);
                    resp.sendRedirect("Login.jsp");
                }
            }
        } else if (action.contentEquals("login")) {

            String email = req.getParameter("email");
            String pass = req.getParameter("password");

            boolean authenticated = accountEJB.authenticate(email, pass);

            if (!authenticated){
                String errorMsg = "Invalid Credentials!";
                req.setAttribute("errorMsg", errorMsg);
                req.getRequestDispatcher("Login.jsp").forward(req, resp);
            } else {
                String jwtToken = createJwtToken(email);
                req.getSession(true).setAttribute("jwtToken", jwtToken);
                if (!resp.isCommitted()){
                    resp.sendRedirect("Shop.jsp");
                }
            }

        } else if (action.contentEquals("logout")){
            req.getSession().invalidate();
            resp.sendRedirect("Login.jsp");
        }
    }

    private String createJwtToken(String email) {
        // Create claims for the JWT
        Map<String, Object> claims = new HashMap<>();
        claims.put("email", email);

        // Set expiration time for the JWT
        long currentTimeMillis = System.currentTimeMillis();
        long expirationTimeMillis = currentTimeMillis + 86400000; // 1 day (in milliseconds)
        Date expirationDate = new Date(expirationTimeMillis);

        byte[] decodedKey = Base64.getDecoder().decode(SECRET_KEY);
        Key secretKey = new SecretKeySpec(decodedKey, 0, decodedKey.length, SIGNING_ALGORITHM);

        return Jwts.builder()
                .setClaims(claims)
                .setExpiration(expirationDate)
                .signWith(secretKey)
                .compact();
    }
}