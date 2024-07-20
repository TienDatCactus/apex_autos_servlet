package Filter;

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

public class LoginFilter extends HttpFilter {

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

        String loginURI = httpRequest.getContextPath() + "/login.jsp";
        String homePageURI = httpRequest.getContextPath() + "/home";
        String[] protectedURIs = {"/cart", "/checkout", "/affiliate", "/compare"};
        
        boolean loggedIn = session != null && session.getAttribute("user") != null;
        String requestURI = httpRequest.getRequestURI();
        String queryString = httpRequest.getQueryString();

        // Check if the requested URI or query parameter indicates a protected page
        boolean isProtectedPage = false;
        for (String uri : protectedURIs) {
            if (requestURI.startsWith(httpRequest.getContextPath() + uri)) {
                isProtectedPage = true;
                break;
            }
        }
        if (queryString != null) {
            for (String uri : protectedURIs) {
                if (queryString.contains("state=" + uri.substring(1))) {
                    isProtectedPage = true;
                    break;
                }
            }
        }

        // Allow access if logged in, or if it's a public page, or if it's a static resource
        boolean isPublicPage = requestURI.equals(homePageURI) || requestURI.equals(loginURI) || requestURI.startsWith(httpRequest.getContextPath() + "/static/");
        if (loggedIn || isPublicPage || !isProtectedPage) {
            chain.doFilter(request, response);
        } else {
            httpResponse.sendRedirect(loginURI);
        }
    }

    @Override
    public void destroy() {
        // Cleanup code if needed
    }
}
