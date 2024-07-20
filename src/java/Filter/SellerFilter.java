package Filter;

import Models.UserAccount;
import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class SellerFilter extends HttpFilter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization logic if needed
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);

        String adminURI = httpRequest.getContextPath() + "/seller/";
        boolean loggedIn = session != null && session.getAttribute("user") != null;
        boolean isAdmin = loggedIn && ((UserAccount)session.getAttribute("user")).getPermission_id() == 2;
        boolean isAdminPage = httpRequest.getRequestURI().startsWith(adminURI);

        if (isAdminPage && !isAdmin) {
            // User is not an admin, redirect to an unauthorized page or login
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/home");
        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {
        // Cleanup code if needed
    }
}
