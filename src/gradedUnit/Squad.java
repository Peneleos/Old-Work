package gradedUnit;

import java.util.ArrayList;

public abstract class Squad {//setting class as abstract to avoid it being created

	//declaring all variables to be stored by it's child classes
	protected static int nextID = 1;
	protected int squadID;
	private String squadName;
	private String coach;// will be changed to the non players object at a later stage
	ArrayList<Player> players = new ArrayList<Player>();
	
	public Squad(String name, String team){
		//constructor to initialise squad class variables needed in child class
		squadID = nextID++;
		coach = name;// will be the non-player object at a later stage
		squadName = team;
	}
	
	public ArrayList<Player> getPlayers() {
		return players;//returns members array to jsp
	}
	
	public Player getPlayer(String name){//returns player object with name provided
		for(Player player : players){
			if(player.getFirst().equals(name)){
				return player;
			} 
		}
		return null;
	}
	//methods getting variables stored by class
	public String getCoach(){
		
		return coach;
	}
	
	public String getTeam(){
		
		return squadName;
	}
	
	public int getID(){
		
		return squadID;
	}
	
	//adding player to squad
	public void addPlayer(String name, String last, String home, String zip, int sru, String birth, String phone, String mobile, String mail, boolean result){
		
		Player p1 = new Player (name, last, home, zip, sru, birth, phone, mobile, mail, result);
		players.add(p1);
	}
	
}
