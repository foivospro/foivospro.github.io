package exercise;
import java.sql.*;
import java.util.ArrayList;

/**
 * MasterDAO provides all the necessary methods related to masters.
 * 
 * @author 
 *
 */

public class MasterDAO {

    /*public ArrayList<Master> getMaster(int idcategory) throws Exception {
		DB db = new DB();
		String query = "SELECT * FROM master WHERE idcategory=?;";
		
		try {
			Connection con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setInt(1, idcategory);
         
			ResultSet rs = stmt.executeQuery();
            ArrayList<Master> masters = new ArrayList<Master>();

            while (rs.next()){
                Master master = new Master(rs.getInt("idmaster"),rs.getString("title"),
                        rs.getString("university"),
                        rs.getFloat("cost"),
                        rs.getString("duration"),
                        rs.getString("description"),
                        rs.getString("urlform"));
                masters.add(master);
            }
                  
            rs.close();
            stmt.close();
			db.close();
            return masters;

		} catch (Exception e) {
            throw new Exception(e.getMessage());
		} finally {
            db.close();
        }		
	} //End of getMaster */



    public ArrayList<Master> getAllMasters() throws Exception {
		DB db = new DB();
		String query = "SELECT * FROM master LEFT JOIN category ON master.idcategory=category.idcategory;";
        ArrayList<Master> allmasters = new ArrayList<Master>();

		
		try {
			Connection con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
            

            while (rs.next()){
            allmasters.add( new Master(rs.getInt("idmaster"),rs.getString("title"),
                        rs.getString("university"),
                        rs.getFloat("cost"),
                        rs.getString("duration"),
                        rs.getString("description"),
                        rs.getString("urlform"), new Category(rs.getInt("idcategory") , (rs.getString("name"))) ));

                
            }
                  
            rs.close();
            stmt.close();
			db.close();
            return allmasters;

		} catch (Exception e) {
            throw new Exception(e.getMessage());
		} finally {
            db.close();
        }		
	} //End of getMaster

     public ArrayList<Master> getTopMasters(int idcategory) throws Exception {
		DB db = new DB();
		String query = "SELECT * FROM master LEFT JOIN category ON master.idcategory=category.idcategory WHERE master.idcategory=?;";
        ArrayList<Master> topmasters = new ArrayList<Master>();

		
		try {
			Connection con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(query);
            stmt.setInt(1,idcategory);
			ResultSet rs = stmt.executeQuery();
            

            while (rs.next()){
            topmasters.add( new Master(rs.getInt("idmaster"),rs.getString("title"),
                        rs.getString("university"),
                        rs.getFloat("cost"),
                        rs.getString("duration"),
                        rs.getString("description"),
                        rs.getString("urlform"), new Category(rs.getInt("idcategory") , (rs.getString("name"))) ));

                
            }
                  
            rs.close();
            stmt.close();
			db.close();
            return topmasters;

		} catch (Exception e) {
            throw new Exception(e.getMessage());
		} finally {
            db.close();
        }		
	} //End of getMaster

public Master getMasterbyId(int id) throws Exception {
	    DB db = new DB();
	    String query = "SELECT * FROM master WHERE idmaster=?";
        Master master = null;
	    try {
	        Connection con = db.getConnection();
	        PreparedStatement stmt = con.prepareStatement(query);
	        stmt.setInt(1, id);
	        ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                master = new Master(rs.getInt("idmaster"),rs.getString("title"),
                rs.getString("university"),
                rs.getFloat("cost"),
                rs.getString("duration"),
                rs.getString("description"),
                rs.getString("urlform"));
            }
            rs.close();
            stmt.close();
	        db.close();
            return master;
	    } catch (Exception e) {
            throw new Exception(e.getMessage());
	    } finally {
            db.close();
        }		
    }

}
