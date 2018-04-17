package gradedUnit;

public abstract class Skill {//setting class as abstract to avoid it being created

	//declaring all variables to be stored by it's child classes
	String name = "none";
	String comments;
	
	public Skill(){//default constructor
	
	}
	//method to change comments variable
	public void changeComments(String impression){
		
		comments = impression;
	}
	//methods to retrieve all variables stored
	public String getComments(){
		
		return comments;
	}
	
	public String getName(){
		
		return name;
	}

}
