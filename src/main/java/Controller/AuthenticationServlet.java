package Controller;

import EJB.AccountEJB;
import EJB.AdminEJB;
import EJB.UserEJB;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/authentication")
public class AuthenticationServlet extends HttpServlet {

    @EJB
    private AdminEJB adminEJB;
    @EJB
    private UserEJB userEJB;
    @EJB
    private AccountEJB accountEJB;

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
                if (!resp.isCommitted()){
                    resp.sendRedirect("Shop.jsp");
                }
            }

        } else if (action.contentEquals("logout")) {
        }
    }
}