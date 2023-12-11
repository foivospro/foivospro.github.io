package exercise;

public class User {
    
    private int idUser;
    private int idQuestionnaire;
    private String firstname;
	private String lastname;
	private String email;
	private String password;

    /**
     * Full constuctor
     *   
     * @param firstname
     * @param lastname
     * @param email
     * @param password
     */
    public User(String firstname, String lastname, String email, String password) {        
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.password = password;
    }

     public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }


     public int getIdQuestionnaire() {
        return idQuestionnaire;
    }

    public void setIdQuestionnaire(int idQuestionnaire) {
        this.idQuestionnaire = idQuestionnaire;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;        
    }  

    public String getPassword() {
        return password;
    }
}