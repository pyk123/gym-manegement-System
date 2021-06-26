package MyPack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
	Connection conn;
	public UserDao() throws SQLException, ClassNotFoundException
	{
		Class.forName("oracle.jdbc.OracleDriver");
	 	conn = DriverManager.getConnection
		     ("jdbc:oracle:thin:@//localhost:1521/XE", "SYSTEM", "Prafulla123");
	 	System.out.println("Connection established...");

	}
	
	
	
	 public void addUser(User user) throws ClassNotFoundException {
	        try {
	        	
	       	    PreparedStatement preparedStatement = conn
	                    .prepareStatement("insert into users(userid,firstname,lastname,dob,email,address,joining,expaire) values (?,?, ?, ?, ? ,?,?,?)");
	            // Parameters start with 1
	            preparedStatement.setInt(1, user.getUserid());
	            preparedStatement.setString(2, user.getFirstName());
	            preparedStatement.setString(3, user.getLastName());
	            preparedStatement.setDate(4, new java.sql.Date(user.getDob().getTime()));
	            preparedStatement.setString(5, user.getEmail());
	            preparedStatement.setString(6, user.getaddress());
	            preparedStatement.setDate(7, new java.sql.Date(user.getjoining().getTime()));
	            preparedStatement.setDate(8, new java.sql.Date(user.getexpaire().getTime()));
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

	    public void updateUser(User user) {
	        try {
	            PreparedStatement preparedStatement = conn
	                    .prepareStatement("update users set firstname=?, lastname=?, dob=?, email=?, address=?,joining=?,expaire=?" +
	                            "where userid=?");
	            // Parameters start with 1
	            preparedStatement.setString(1, user.getFirstName());
	            preparedStatement.setString(2, user.getLastName());
	            preparedStatement.setDate(3, new java.sql.Date(user.getDob().getTime()));
	            preparedStatement.setString(4, user.getEmail());
	            preparedStatement.setString(5, user.getaddress());
	            preparedStatement.setDate(6, new java.sql.Date(user.getjoining().getTime()));
	            preparedStatement.setDate(7, new java.sql.Date(user.getexpaire().getTime()));
	            preparedStatement.setInt(8, user.getUserid());
	            
	            preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	   public List<User> getAllUsers() {
	        List<User> users = new ArrayList<User>();
	        try {
	            Statement statement = conn.createStatement();
	            ResultSet rs = statement.executeQuery("select * from users");
	            while (rs.next()) {
	                User user = new User();
	                user.setUserid(rs.getInt("userid"));
	                user.setFirstName(rs.getString("firstname"));
	                user.setLastName(rs.getString("lastname"));
	                user.setDob(rs.getDate("dob"));
	                user.setEmail(rs.getString("email"));
	                user.setaddress(rs.getString("address"));
	                user.setjoining(rs.getDate("joining"));
	                user.setexpaire(rs.getDate("expaire"));
	                users.add(user);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return users;
	    }

	    public User getUserById(int userId) {
	        User user = new User();
	        try {
	            PreparedStatement preparedStatement = conn.
	                    prepareStatement("select * from users where userid=?");
	            preparedStatement.setInt(1, userId);
	            ResultSet rs = preparedStatement.executeQuery();

	            if (rs.next()) {
	                user.setUserid(rs.getInt("userid"));
	                user.setFirstName(rs.getString("firstname"));
	                user.setLastName(rs.getString("lastname"));
	                user.setDob(rs.getDate("dob"));
	                user.setEmail(rs.getString("email"));
	                user.setaddress(rs.getString("address"));
	                user.setjoining(rs.getDate("joining"));
	                user.setexpaire(rs.getDate("expaire"));
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return user;
	    }
	    public int getUserChecking(int userId) {
	    	int recFound=0;
	        try {
	            PreparedStatement preparedStatement = conn.
	                    prepareStatement("select * from users where userid=?");
	            preparedStatement.setInt(1, userId);
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