package gradedUnit;

public class Kicking extends Skill {

	//declaring all kicking variables
	private int dropLevel = 0;
	private int puntLevel = 0;
	private int grubberLevel = 0;
	private int goalLevel = 0;
	
	public Kicking(){//constructor to initialise the class
		
		super();
		name = "Kicking";
	}
	//declaring all methods to change the variables
	public void changeDrop(int level){
		
		dropLevel = level;
	}
	
	public void changePunt(int level){
		
		puntLevel = level;
	}
	
	public void changeGrubber(int level){
		
		grubberLevel = level;
	}
	
	public void changeGoal(int level){
		
		goalLevel = level;
	}
	//declaring all methods to retrieve all variables
	public int getDrop(){
		
		return dropLevel;
	}
	
	public int getPunt(){
		
		return puntLevel;
	}
	
	public int getGrubber(){
		
		return grubberLevel;
	}
	
	public int getGoal(){
		
		return goalLevel;
	}
}
