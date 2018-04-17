package gradedUnit;

import java.util.ArrayList;

public class Player extends Member{
	
	//declare class variables
	//all variables will be N/A until set
	private String nextKin = "N/A";
	private String relationship = "N/A";
	private String kinAddress = "N/A";
	private String kinTele = "N/A";
	private String doctor = "N/A";
	private String docTele = "N/A";
	private String health = "N/A";
	private String position = "N/A";
	private String pastPositions = "N/A";
	private ArrayList<Skill> skillList = new ArrayList<Skill>();
	
	//declaring extra variables needed for junior players
		String kinNo2 = "N/A";
		String relationshipNo2 = "N/A";
		String addressNo2 = "N/A";
		String teleNo2 = "N/A";
		Boolean consent = false;//false = consent form not received yet

	public Player (String fName, String lName, String address, String postcode, int sru, String doB, String teleNo, String mobNo, String email, boolean result){
		//constructor to initialise player class
		super (fName, lName, address, postcode, sru, doB, teleNo, mobNo, email, result);
		//declaring all skill categories and adding them to skills array
		Passing p1 = new Passing();
		skillList.add(p1);
		
		Tackling t1 = new Tackling();
		skillList.add(t1);
		
		Kicking k1 = new Kicking();
		skillList.add(k1);		
	}
	
	public Passing getPass(){//returns the passing object from the skills array
		for(Skill temp : skillList){
			if(temp.getName().equals("Passing")){
				if(temp instanceof Passing){
					
					Passing pass = (Passing) temp;
					return pass;
				}
			} 
		}
		return null;
	}
	
	public Kicking getKick(){//returns the kicking object from the skills array
		for(Skill temp : skillList){
			if(temp.getName().equals("Kicking")){
				if(temp instanceof Kicking){
					
					Kicking kick = (Kicking) temp;
					return kick;
				}
			} 
		}
		return null;
	}
	
	public Tackling getTack(){//returns the tackling object from the skills array
		for(Skill temp : skillList){
			if(temp.getName().equals("Tackling")){
				if(temp instanceof Tackling){
					
					Tackling tack = (Tackling) temp;
					return tack;
				}
			} 
		}
		return null;
	}
	//setting all the methods need to change and store player details
	public void setKin(String kin){
		
		nextKin = kin;
	}
	
	public void setKinNo(String kinNo){
		
		kinTele = kinNo;
	}
	
	public void setKinRel(String relate){
		
		relationship = relate;
	}
	
	public void setDoctor(String newDoctor){
		
		doctor = newDoctor;
	}
	
	public void setDocNo(String docNo){
		
		docTele = docNo;
	}
	
	public void setHealth(String status){
		
		health = status;
	}
	
	public void setPosition(String currentPos){
		
		position = currentPos;
	}
	
	public void setPast(String pastPos){
		
		pastPositions = pastPos;
	}
	//all junior player details being stored and changed
	public void setKinNo2(String kin){
		
		kinNo2 = kin;
	}
	
	public void setKinRelNo2(String relate){
		
		relationshipNo2 = relate;
	}
	
	public void setKinAddress(String street){
		
		kinAddress = street;
	}
	
	public void setAddressNo2(String street){
		
		addressNo2 = street;
	}
	
	public void setTeleNo2(String phone){
		
		teleNo2 = phone;
	}
	
	public void setConsent(boolean answer){
		
		consent = answer;
	}
	//getting all the variables from the object
	public String getKin(){
		
		return nextKin;
	}
	
	public String getKinNo(){
		
		return kinTele;
	}
	
	public String getKinAddress(){
		
		return kinAddress;
	}
	
	public String getKinRel(){
		
		return relationship;
	}
	
	public String getDoc(){
		
		return doctor;
	}
	
	public String getDocNo(){
		
		return docTele;
	}
	
	public String getHealth(){
		
		return health;
	}
	
	public String getPosition(){
		
		return position;
	}
	
	public String getPast(){
		
		return pastPositions;
	}
	
	public String getKinNo2(){
		
		return kinNo2;
	}
	
	public String getKinRelNo2(){
		
		return relationshipNo2;
	}
	
	public String getAddressNo2(){
		
		return addressNo2;
	}

	public String getTeleNo2(){
		
		return teleNo2;
	}
	
	public boolean getConsent(){
		
		return consent;
	}
	
}
