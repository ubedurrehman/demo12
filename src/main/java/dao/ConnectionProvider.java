package dao;


import java.sql.*;

public class ConnectionProvider {

    private static Connection con;
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException classNotFoundException){
            classNotFoundException.printStackTrace();
        }
    }
    public static Connection getConnection(){
        try{
            if(con == null){
                //driver class load


                //create a connection

                con=DriverManager.
                        getConnection("jdbc:mysql://localhost:3306/techblogs","root","root");
            }


        }catch(Exception e){
            e.printStackTrace();
        }
        return  con;
    }

}

