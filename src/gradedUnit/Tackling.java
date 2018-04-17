package gradedUnit;

public class Tackling extends Skill{
	//declaring all variables
	private int frontLevel = 0;
	private int rearLevel = 0;
	private int sideLevel = 0;
	private int scrabbleLevel = 0;
	
	public Tackling(){
		//constructor to initialise tackling class
		super();
		name = "Tackling";
	}
	
//methods changing skill level values
public void changeFront(int level){
		
		frontLevel = level;
	}
	
	public void changeRear(int level){
		
		rearLevel = level;
	}
	
	public void changeSide(int level){
		
		sideLevel = level;
	}
	
	public void changeScrabble(int level){
		
		scrabbleLevel = level;
	}
	
	//methods retrieving all the skill level values
	public int getFront(){
		
		return frontLevel;
	}
	
	public int getRear(){
		
		return rearLevel;
	}
	
	public int getSide(){
		
		return sideLevel;
	}
	
	public int getScrabble(){
		
		return scrabbleLevel;
	}

}
