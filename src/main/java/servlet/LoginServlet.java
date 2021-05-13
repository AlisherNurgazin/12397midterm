package servlet;

import dao.AccountDAOImpl;
import dao.AccountDao;
import entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(
        value = "/login"
)
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AccountDao accountDao = new AccountDAOImpl();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Account acc = accountDao.getAccount(username, password);
        if (acc != null && acc.getUsername() != null) {
            req.setAttribute("username", acc.getUsername());
            HttpSession session = req.getSession();
            session.setAttribute("user", acc);
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
        else {
            req.setAttribute("message", "Username or Password is incorrect!!!");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
