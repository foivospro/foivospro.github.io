package exercise;

public class Category { 
    
    private int idcategory;
    private String name;
   
    /**
     * Full constuctor
     * @param idcategory
     * @param name
     */
    public Category(int idcategory, String name) {   
        this.idcategory = idcategory;     
        this.name = name;
    }

    public int getIdCategory() {
        return idcategory;
    }

    public String getName() {
        return name;
    }

      public void setIdCategory(int idcategory) {
        this.idcategory= idcategory;
    }

    public void setName(String name) {
       this.name=name;
    }
    
}
