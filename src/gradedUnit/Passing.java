package gradedUnit;

public class Passing extends Skill {
	//declaring all variables unique to passing
	private int standardLevel;
	private int spinLevel;
	private int popLevel;
	
	public Passing(){
		//constructor to initialise passing class
		super();
		name = "Passing";
	}
//methods changing the all the variables
public void changeStandard(int level){
		
		standardLevel = level;
	}
	
	public void changeSpin(int level){
		
		spinLevel = level;
	}
	
	public void changePop(int level){
		
		popLevel = level;
	}
	
	//methods returning skill level numbers
	public int getStandard(){
		
		return standardLevel;
	}
	
	public int getSpin(){
		
		return spinLevel;
	}
	
	public int getPop(){
		
		return popLevel;
	}
	
}
