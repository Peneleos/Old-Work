package gradedUnit;

import java.util.ArrayList;
import java.util.Iterator;

public class Controller {
	
	ArrayList<Member> members = new ArrayList<Member>();
	ArrayList<Squad> squads = new ArrayList<Squad>();
	private static Controller control = new Controller();

	public static Controller getControl(){
		return control;
	}
	
	public Controller() {
		loadTestData();//fills the arrays above with data for testing
	}

	public ArrayList<Member> getMembers() {
		return members;//returns members array to jsp
	}
	
	public ArrayList<Squad> getSquads(){
		return squads;//returns squads array to jsp
	}
	
	public Member getMember(String name){//returns member object with the name provided
		for(Member member : members){
			if(member.getFirst().equals(name)){
				return member;
			} 
		}
		return null;
	}
	
	public Squad getSquad(String name){//returns squad object with the name provided
		for(Squad squad : squads){
			if(squad.getTeam().equals(name)){
				return squad;
			} 
		}
		return null;
	}
	
	public void loadTestData(){
		//creating 2 squads with coach and team name
		Senior s1 = new Senior("Graham Henry", "1st");
		squads.add(s1);
		
		Junior j1 = new Junior("Eddie Jones", "3rd");
		squads.add(j1);
		
		Iterator<Squad> anIT = squads.iterator();
		
		//adding 3 players to senior team and 2 to juniors
		while(anIT.hasNext()){				
			Squad currentSquad = anIT.next();
			int squadID = currentSquad.getID();//get the squad id
			if (squadID == 1){//if user's ID is equal to current customer array ID
				
				if(currentSquad instanceof Senior){
					
					Senior temp = (Senior) currentSquad;
					//adding 3 players to senior squad
					temp.addPlayer("Richie", "McCaw", "17 Church Street, Freuchie", "KY15", 001, "31/12/1980", "01334", "075915", "richie@simplyrugby.com", true);
					
					temp.addPlayer("Brian", "O'Driscoll", "18 Church Street, Freuchie", "KY15", 004, "21/01/1979", "01338", "075982", "brian@simplyrugby.com", true);
					
					temp.addPlayer("Sergio", "Parisse", "19 Church Street, Freuchie", "KY15", 005, "12/09/1983", "01335", "075983", "sergio@simplyrugby.com", true);
				
					Iterator<Player> plIT = temp.players.iterator();
					
					while(plIT.hasNext()){				
						Player currentPlayer = plIT.next();
						
						Player playTemp = (Player) currentPlayer;
						
						String playerFirst = currentPlayer.getFirst();//gets players first name
						//adding additional details for senior players
						if (playerFirst.equals("Richie")){
							
							playTemp.setKin("Mr McCaw");
							playTemp.setKinRel("Father");
							playTemp.setKinNo("01341");
							playTemp.setDoctor("Dr.Jones");
							playTemp.setDocNo("02345");
							playTemp.setHealth("None");
							playTemp.setPosition("Wing");
							playTemp.setPast("No past positions");							
							playTemp.setProfileShot("/themes/images/McCaw.jpg");
							
						}
						
						if (playerFirst.equals("Brian")){
							
							playTemp.setKin("Mrs O'Driscoll");
							playTemp.setKinRel("Mother");
							playTemp.setKinNo("01342");
							playTemp.setDoctor("Dr.King");
							playTemp.setDocNo("02346");
							playTemp.setHealth("Knee Injury");
							playTemp.setPosition("Centre");
							playTemp.setPast("No past positions");
							playTemp.setProfileShot("/themes/images/O'Driscoll.jpg");
							
						}
						
						if (playerFirst.equals("Sergio")){
							
							playTemp.setKin(" Mr Parisse");
							playTemp.setKinRel("Father");
							playTemp.setKinNo("01343");
							playTemp.setDoctor("Dr.Queen");
							playTemp.setDocNo("02347");
							playTemp.setHealth("None");
							playTemp.setPosition("Number 8");
							playTemp.setPast("No past positions");							
							playTemp.setProfileShot("/themes/images/Sergio.jpg");
							
						}
						
					}
				
				}
		
			}//end of equals 1 if
			
			if (squadID == 2){
				//adding 2 players to the junior squad
				if(currentSquad instanceof Junior){
					
					Junior temp = (Junior) currentSquad;
					
					temp.addPlayer("Shane", "Williams", "20 Church Street, Freuchie", "KY15", 006, "26/02/1977", "01336", "075984", "shane@simplyrugby.com", true);
				
					temp.addPlayer("Peter", "Stringer", "21 Church Street, Freuchie", "KY15", 007, "13/12/1977", "01337", "075985", "peter@simplyrugby.com", true);
					
					Iterator<Player> juIT = temp.players.iterator();
					
					//adding all additional junior player details to the database
					while(juIT.hasNext()){				
						Player currentPlayer = juIT.next();
						
						Player playTemp = (Player) currentPlayer;
						
						String playerFirst = currentPlayer.getFirst();//gets players first name
						
						if (playerFirst.equals("Shane")){
							
							playTemp.setKin("Mr Williams");
							playTemp.setKinRel("Father");
							playTemp.setKinNo("01344");
							playTemp.setKinAddress("20 Church Street, Freuchie");
							playTemp.setDoctor("Dr.Jones");
							playTemp.setDocNo("02345");
							playTemp.setHealth("None");
							playTemp.setPosition("Scrum half");
							playTemp.setPast("No past positions");	
							playTemp.setKinNo2("Mrs Williams");
							playTemp.setKinRelNo2("Mother");
							playTemp.setAddressNo2("Same as other guardian");
							playTemp.setTeleNo2("07544");
							playTemp.setProfileShot("/themes/images/Williams.jpg");
							
						}
						
						if (playerFirst.equals("Peter")){
							
							playTemp.setKin("Mrs Stringer");
							playTemp.setKinRel("Mother");
							playTemp.setKinNo("01345");
							playTemp.setDoctor("Dr.King");
							playTemp.setDocNo("02346");
							playTemp.setHealth("None");
							playTemp.setPosition("Scrum half");
							playTemp.setPast("No past positions");	
							playTemp.setKinNo2("Mr Stringer");
							playTemp.setKinRelNo2("Father");
							playTemp.setAddressNo2("Same as other guardian");
							playTemp.setTeleNo2("07545");
							playTemp.setProfileShot("/themes/images/Stringer.jpg");
							
						}
						
					}
				}
				
			}//end of equals 2 if
			
		}//end of while
		
		//creating 2 non-playing members who are the coaches to the 2 squads
		NonPlaying n1 = new NonPlaying("Graham", "Henry", "1 Links Place, St Andrews", "KY13", 003, "08/06/1946", "01331", "075800", "graham@simplyrugby.com", true);
		n1.setProfileShot("/themes/images/Henry.jpg");
		members.add(n1);
		
		NonPlaying n2 = new NonPlaying("Eddie", "Jones", "2 Links Place, St Andrews", "KY13", 002, "30/01/1960", "01332", "075700", "eddie@simplyrugby.com", true);
		n2.setProfileShot("/themes/images/Jones.jpg");
		members.add(n2);
		
	}

}
