package userpack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import MyPack.User;

public class registorDao {
	Connection conn;
public registorDao() throws SQLException, ClassNotFoundException
{
	Class.forName("oracle.jdbc.OracleDriver");
 	conn = DriverManager.getConnection
	     ("jdbc:oracle:thin:@//localhost:1521/XE", "SYSTEM", "Prafulla123");
 	System.out.println("Connection established...");

}



 public void addUser(registration registration) throws ClassNotFoundException {
        try {
        	
       	    PreparedStatement preparedStatement = conn
                    .prepareStatement("insert into registrations(fullname,email,addr,age,number1) values (?,?, ?, ?, ? )");
            // Parameters start with 1
          
            preparedStatement.setString(1, registration.getfullname());
            preparedStatement.setString(2, registration.getemail());
            
            preparedStatement.setString(5, registration.getaddr());
            preparedStatement.setInt(6, registration.getage());
            preparedStatement.setInt(6, registration.getnumber1());
           
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteUser(int userId) {
        try {
            PreparedStatement preparedStatement = conn
                    .prepareStatement("delete from users where userid=?");
            // Parameters start with 1
            preparedStatement.setInt(1, userId);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateUser(registration registration) {
        try {
            PreparedStatement preparedStatement = conn
                    .prepareStatement("update registrations set firstname=?, lastname=?, dob=?, email=?, address=?,joining=?,expaire=?" +
                            "where userid=?");
            // Parameters start with 1
            preparedStatement.setString(1, registration.getfullname());
            preparedStatement.setString(2, registration.getemail());
            
            preparedStatement.setString(5, registration.getaddr());
            preparedStatement.setInt(6, registration.getage());
            preparedStatement.setInt(6, registration.getnumber1());
            
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

   public List<registration> getAllUsers() {
        List<registration> registrations = new ArrayList<registration>();
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("select * from registration");
            while (rs.next()) {
            	registration registration = new registration();
            	registration.setfullname(rs.getString("fullname"));
            	registration.setemail(rs.getString("email"));
            	registration.setaddr(rs.getString("addr"));
            	registration.setage(rs.getInt("age"));
            	registration.setnumber1(rs.getInt("number1"));
              
            	registrations.add(registration);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return registrations;
    }

    public registration getregistrationById(String fullname) {
    	registration registration = new registration();
        try {
            PreparedStatement preparedStatement = conn.
                    prepareStatement("select * from registrations where number1=?");
            preparedStatement.setString(1, fullname);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
            	registration.setfullname(rs.getString("fullname"));
            	registration.setemail(rs.getString("email"));
            	registration.setaddr(rs.getString("addr"));
            	registration.setage(rs.getInt("age"));
            	registration.setnumber1(rs.getInt("number1"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return registration;
    }
    public int getUserChecking(String email) {
    	int recFound=0;
        try {
            PreparedStatement preparedStatement = conn.
                    prepareStatement("select * from registrations where email=?");
            preparedStatement.setString(1, email);
            ResultSet rs = preparedStatement.executeQuery();
            
             if (rs.next() == false) 
             { 
            	 recFound=0;
             }

            else
            {
            	recFound=1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return recFound;
    }
}
