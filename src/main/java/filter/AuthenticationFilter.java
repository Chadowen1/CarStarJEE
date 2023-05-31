package filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(urlPatterns = {"/Register.jsp", "/Login.jsp", "/adminlogin.jsp"})
public class AuthenticationFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        HttpSession session = httpRequest.getSession(false);
        if (session != null && session.getAttribute("jwtToken") != null) {
            // Session already exists, redirect to Shop.jsp
            httpResponse.sendRedirect("Shop.jsp");
        } else {
            chain.doFilter(request, response); // Continue with the filter chain
        }

        //For Admin Dashboard
        if (session != null && session.getAttribute("AdminjwtToken") != null) {
            // Session already exists, redirect to adminlogin.jsp
            httpResponse.sendRedirect("adminlogin.jsp");
        } else {
            chain.doFilter(request, response); // Continue with the filter chain
        }
    }

    public void init(FilterConfig filterConfig) throws ServletException {
    }

    public void destroy() {
    }
}
