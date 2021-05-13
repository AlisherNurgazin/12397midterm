package filter;
import dao.AccountDAOImpl;
import dao.AccountDao;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.logging.Logger;
public class UsernameFilter implements Filter{
    AccountDao accountDao;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        accountDao = new AccountDAOImpl();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;

    }

    @Override
    public void destroy() {

    }
}
