package exercise;

import java.sql.*;

public class Questionnaire {

    private int idQuestionnaire;
    private int ans;
    private String cat;

    public void setIdQuestionnaire(int idQuestionnaire) {
        this.idQuestionnaire = idQuestionnaire;
    }
    public int getIdQuestionnaire() {
        return idQuestionnaire;
    }

    public void setAns(int ans) {
        this.ans = ans;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }

    public int getAns() {
        return ans;
    }

    public String getCat() {
        return cat;
    }

    //TODO mia methodos pou tha pairnei ta answers kai tha ta vazei me insert sth db sto table questionnaire (id_questionnaie, id_question, answer)
    // TODO mia methodos poy tha travaei ta answers apo to table questionnaire kai tha vazei to sum sto score tou table catergory_q dhl endiameso pinaka(id_quationnaire,id_category)
    //TODO mia methodos poy tha taxinomei to table me ta scores opou id_questionnaire= id_questionnaire toy user kata fthinousa seira
    //na gyrisw to id twn metaptyxiakwn--> na gyrnaei antikeimena typoy master
    //prepei na ylopoihthei h master.java

//auth h methodos apla pairnei ta answers pou mou dinei h adrianna kai ta kanei insert sth teleia db mas
    public void InsertAnswer(int idquestionnaire, int answer, int idquestion) throws Exception {
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String insertsql = "INSERT INTO questionnaire(idquestionnaire, answer, idquestion) VALUES(?,?,?);";       

        try {
            con = db.getConnection();
            stmt = con.prepareStatement(insertsql);
            stmt.setInt(1,idquestionnaire);
            stmt.setInt(2,answer);
            stmt.setInt(3,idquestion);
            stmt.executeUpdate();
			stmt.close();
            con.close();
            db.close();
            
        }catch (Exception e) {
                throw new Exception(e.getMessage());
        } finally {
            stmt.close();
            con.close();
            db.close(); 
        }
    }

// mia methodos poy tha travaei ta answers apo to table questionnaire kai tha vazei to sum sto score tou table catergory_q dhl endiameso pinaka(id_quationnaire,id_category)
   
    public void InsertCategoryScore(int idquestionnaire) throws Exception {
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt1, stmt2 = null;
        ResultSet rs1 = null;
        String sql1 = "SELECT * FROM questionnaire WHERE idquestionnaire=?;";       
        int score[] = new int[10];
        int a=-1;
 
        try {
            con = db.getConnection();
            stmt1 = con.prepareStatement(sql1);
            stmt1.setInt(1,idquestionnaire);
            rs1 = stmt1.executeQuery();
            //dhmiourgia pinakas scores 
            while (rs1.next()){
                 //kanw thn paradoxh oti ana dyo oi erwthseis allazoyn kathgoria
                
                int i = rs1.getInt("idquestion");
                if(i%2!=0) {
                     a = i/2;
                    score[a] = rs1.getInt("answer") ;
                } else {
                    score[a] += rs1.getInt("answer") ;
                }
            }
            String sql2 = "INSERT INTO questionnaire_category(idquestionnaire, idcategory, score) VALUES(?,?,?);";  
            stmt2 = con.prepareStatement(sql2);
            for(int j=0;j<10;j++){
                stmt2.setInt(1,idquestionnaire);
                stmt2.setInt(2, j+1);
                stmt2.setInt(3,score[j]);
                stmt2.executeUpdate();
            }
            // stmt1.close();
            stmt2.close();
            con.close();
            db.close(); 
            rs1.close();
           
        }catch (Exception e) {
                throw new Exception(e.getMessage());
        } finally {
            //  stmt1.close();
            stmt2.close();
            con.close();
            db.close(); 
            rs1.close();
        }
    }

    public  int[] topCategories(int idquestionnaire) throws Exception {
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql1 = "SELECT idcategory FROM questionnaire_category WHERE idquestionnaire =? ORDER BY score DESC;";

        try {
            con = db.getConnection();
            stmt = con.prepareStatement(sql1);
            stmt.setInt(1,idquestionnaire);
            rs = stmt.executeQuery();
            int[] top = new int[3];
            for (int i=0;i < 3;i++){
                rs.next();
                top[i] = rs.getInt("idcategory");
            }
            rs.close();
            stmt.close();
            con.close();
            db.close();
            return top;
        }catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            stmt.close();
            rs.close();
            con.close();
            db.close(); 
    }
}

public void insertIdQuestionnaire(int idUser, int answer) throws Exception {
		DB db = new DB();
		String query = "INSERT INTO questionnaire (questionnaire) VALUES (?);";
		try {
			Connection con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setInt(1, idUser);
			stmt.executeUpdate();
            stmt.close();
			con.close();
			db.close();
		} catch (Exception e) {
			db.close();
            throw new Exception(e.getMessage());
		} finally {
            db.close();
        }				
	}

}