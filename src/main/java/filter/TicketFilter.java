package filter;

import dao.AccountDAOImpl;
import dao.AccountDao;
import entity.Account;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class TicketFilter implements Filter {
    AccountDao accountDao;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        accountDao = new AccountDAOImpl();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        HttpSession httpSession = req.getSession();
        Account account = (Account) httpSession.getAttribute("user");
        if (account.getUsername() == null) {
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
        else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
