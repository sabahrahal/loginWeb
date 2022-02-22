package model;

import config.Connect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    public static final String SQL_INSERT = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
    public static final String SQL_SELECT = "SELECT * FROM users";

    public List<User> select() {
        List<User> users = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        User user; 
        try {
            conn = Connect.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();

            while (rs.next()) {
                String username = rs.getString("username");
                String email = rs.getString("email");
                String password = rs.getString("password");
                user = new User(username, email, password);
                users.add(user);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Connect.close(rs);
            Connect.close(stmt);
            Connect.close(conn);
        }
        return users;
    }

    public int insert(User user) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int register = 0;

        try {
            conn = Connect.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            register = stmt.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Connect.close(stmt);
            Connect.close(conn);
        }
        return register;
    }
}
