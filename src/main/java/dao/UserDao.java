package dao;

import entities.User;

import java.sql.Connection;
import java.sql.*;

public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;
        try {
            String query = "insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());

            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }
    public User getUserByEmailandPassword(String email, String password){
        User user=null;
        try {
            String query="select * from user where email=? and password=?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1,email);
            pstmt.setString(2,password);
            ResultSet set=pstmt.executeQuery();
            if(set.next()){
                user=new User();
                // dtat from db
                String name=set.getString("name");
                //set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
               user.setDateTime(set.getTimestamp("rdate"));

                user.setProfile(set.getString("profile"));



            }
        }catch (Exception e){
            e.printStackTrace();

        }

        return user;
    }
}