package servlet;

import dao.AccountDAOImpl;
import dao.AccountDao;
import entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.annotation.XmlType;
import java.io.IOException;
@WebServlet(value = "/register")
public class RegisterServlet extends HttpServlet {
    public RegisterServlet() {

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AccountDao accountDao = new AccountDAOImpl();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String phone_num = req.getParameter("phone_num");
        if (accountDao.ifExists(username)) {
            req.setAttribute("message", "Such username is already exists");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
        else {
            Account account = new Account(username, password, email, phone_num, 2);
            accountDao.insertAccount(account);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
