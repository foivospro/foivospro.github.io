package exercise;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


/**
 * UserDAO provides all the necessary methods related to users.
 * 
 * @author 
 *
 */
public class UserDAO {
		
	/**
	 * This method returns a List with all Users
	 * 
	 * @return List<User>
	 */
	public List<User> getUsers() throws Exception {
		DB db = new DB();
		String query = "SELECT * FROM users_ex3_8210126_2023_2024";
		
		try {
			Connection con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			List<User> users = new ArrayList<User>();
			while (rs.next()) {
				User user = new User(rs.getString("firstname"),
                        rs.getString("lastname"),
                        rs.getString("email"),
                        rs.getString("password"));	
					users.add(user);
			
			}
			rs.close();
            stmt.close();
			db.close();
			return users;
		} catch (Exception e) {
            throw new Exception(e.getMessage());
		} finally {
            db.close();
        }		
	} //End of getUsers

	/**
	 * Search user by username
	 * 
	 * @param username, String
	 * @return User, the User object or null
	 * @throws Exception
	 */
	public User findUser(String username) throws Exception {
		DB db = new DB();
		String query = "SELECT * FROM user WHERE username=?;";
		
		try {
			Connection con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, username);
			ResultSet rs = stmt.executeQuery();
            if (!rs.next()) {
                rs.close();
                stmt.close();
                db.close();
                return null;
            }
            User user = new User(rs.getString("firstname"),
                        rs.getString("lastname"),
                        rs.getString("email"),
                        rs.getString("password"));
            
            rs.close();
            stmt.close();
			db.close();
            return user;
		} catch (Exception e) {
            throw new Exception(e.getMessage());
		} finally {
            db.close();
        }		
	} //End of findUser

	/**
	 * This method is used to authenticate a user.
	 * 
	 * @param username, String
	 * @param password, String
	 * @return User, the User object
	 * @throws Exception, if the credentials are not valid
	 */
	public User authenticate(String email, String password) throws Exception {
		DB db = new DB();
		String query = "SELECT * FROM user WHERE email=? AND password=?;";
		
		try {
			Connection con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
            if (!rs.next()) {  
                rs.close();
                stmt.close();
                db.close();
				throw new Exception("Wrong email or password");
                
            }
            User user = new User(rs.getString("firstname"),
                        rs.getString("lastname"),
                        rs.getString("email"),
                        rs.getString("password"));
            
            rs.close();
            stmt.close();
			db.close();
            return user;
		} catch (Exception e) {
            throw new Exception(e.getMessage());
		} finally {
            db.close();
        }		
				
	} //End of authenticate
	
	/**
	 * Register/create new User.
	 * 
	 * @param user, User
	 * @throws Exception, if encounter any error.
	 */
	public void register(User user) throws Exception {
		DB db = new DB();
		String query1 = "SELECT * FROM user WHERE password=? OR email=?;";
		String query2 = "INSERT INTO `user` (`name`,`surname`,`email`,`password`) VALUES (?,?,?,?);";
		try {
			Connection con = db.getConnection();
			PreparedStatement stmt1 = con.prepareStatement(query1);
			stmt1.setString(1, user.getPassword());
			stmt1.setString(2, user.getEmail());
			ResultSet rs = stmt1.executeQuery();
			if (rs.next()) {
				rs.close();
				stmt1.close();
				db.close();
				throw new Exception("Sorry, password or email already registered");
			}

			PreparedStatement stmt2 = con.prepareStatement(query2);
			stmt2.setString(1, user.getFirstname());
			stmt2.setString(2, user.getLastname());
			stmt2.setString(3, user.getEmail());
			stmt2.setString(4, user.getPassword());
			stmt2.executeUpdate();
			stmt2.close();
			db.close();
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			db.close();
		}
	}//end of register

} //End of class
