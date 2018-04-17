package gradedUnit;

public abstract class Member {

	//declaring all variables for members
	private String fName;
	private String surname;
	private String address;
	private String postcode;
	private int sruNo;
	private String doB;
	private String teleNo;
	private String mobNo;
	private String email;
	private String profileShot;
	private boolean subs = false;//false = not paid and true is paid
	protected static int nextID = 120;
	protected int memberID;
	
	public Member(String name, String last, String home, String zip, int sru, String birth, String phone, String mobile, String mail, boolean result){
		
		fName = name;
		surname = last;
		address = home;
		postcode = zip;
		sruNo = sru;
		doB = birth;
		teleNo = phone;
		mobNo = mobile;
		email = mail;
		subs = result;
		memberID = ++nextID;
		
	}
	//declaring methods to retrieve all the variables
	public String getFirst(){
		
		return fName;
	}
	
	public String getLast(){
		
		return surname;
	}
	
	public String getAddress(){
		
		return address;
	}
	
	public String getCode(){
		
		return postcode;
	}
	
	public int getSRU(){
		
		return sruNo;
	}
	
	public String getDoB(){
		
		return doB;
	}
	
	public String getPhone(){
		
		return teleNo;
	}
	
	public String getMob(){
		
		return mobNo;
	}
	
	public String getEmail(){
		
		return email;
	}
	
	public boolean getSubs(){
		
		return subs;
	}
	
	public int getMemID(){//method is called this as game records will also have an id number when added
		
		return memberID;
	}
		
	public void setProfileShot(String image){
		
		profileShot = image;
	}
	
	public String getProfileShot(){
		
		return profileShot;
	}
}
