package exercise;

public class Master {
    
    private int idmaster;
    private String title;
    private String university;
	private float cost;
	private String duration;
	private String description;
    private String urlform;
    private int idcategory;
    private String name;
    private Category category;

    /**
     * Full constuctor
     * @param idmaster 
     * @param title
     * @param university
     * @param cost
     * @param duration
     * @param description
     * @param urlform
     */
    public Master(int idmaster, String title,String university, float cost, String duration, String description, String urlform) {   
        this.idmaster = idmaster;     
        this.title = title;
        this.university = university;
        this.cost = cost;
        this.duration = duration;
        this.description = description;
        this.urlform = urlform;
    }

    public Master(int idmaster, String title,String university, float cost, String duration, String description, String urlform, Category category) {   
        this.idmaster = idmaster;     
        this.title = title;
        this.university = university;
        this.cost = cost;
        this.duration = duration;
        this.description = description;
        this.urlform = urlform;
        this.idcategory = category.getIdCategory();  
        this.name=category.getName (); 
        this.category=category;
        
    }

    public int getIdMaster() {
        return idmaster;
    }

    public String getTitle() {
        return title;
    }

    public String getUniversity() {
        return university;
    }

    public float getCost() {
        return cost;
    }

    public String getDuration() {
        return duration;
    }

    public String getDescription() {
        return description;
    }

    public String getUrlform() {
        return urlform;
    }

    public int getIdcategory() {
        return idcategory;
    }

    public void setIdMaster(int idmaster) {
        this.idmaster = idmaster;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setUrlform(String urlform) {
        this.urlform = urlform;
    }

    public void setIdcategory(int idcategory) {
        this.idcategory = idcategory;
    }

    public int getIdCategory(){
        return idcategory;
    }

    public void setName(String name){
        this.name=name;
    }

    public String getName(){
        return name;
    }

   public Category getCategory(){
        return category;
    }

    public void setCategory(Category category){
        this.category=category;
    }
    

 
        
        

} 
