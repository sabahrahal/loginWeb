package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import model.User;
import model.UserDao;

public class UsersController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "insert":
                    singUp(request, response);
                    break;
                case "select":
                    logIn(request, response);
                    break;
            }
        }
    }

    private void singUp(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //recuperar valores del sing up 
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User(username, email, password);
        UserDao userDao = new UserDao();
        userDao.insert(user);
        response.sendRedirect("login.jsp");
    }

    private void logIn(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //recuperar valores del logIn
        String error;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserDao userDao = new UserDao();
        HttpSession hs = request.getSession();
        List<User> users;
        users = userDao.select();

        if (username.equals("") || password.equals("")) {
            error = "Empty Fields";
            hs.setAttribute("error", error);
            response.sendRedirect("loginError.jsp");
        }
        
        else {
        for (User user : users) {
            if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                response.sendRedirect("loginSuccessful.jsp");
            }
            if (user.getUsername().equals(username) && !user.getPassword().equals(password)) {
                error = "Verify Password";
                hs.setAttribute("error", error);
                response.sendRedirect("loginError.jsp");
            }
        }
    }
    }
}
