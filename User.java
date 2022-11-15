package com.javatpoint.mypack;

public class User {
	private int id;
	private String email;
	private String gender;
	private String phonenumber;
	
	 public User() {
	    }
	 
	    public User(int id) {
	        this.id = id;
	    }
	 
	    public User(int id, String name, String password, String email,String gender,String phonenumber) {
	        this(name,password,email,gender,phonenumber);
	        this.id = id;
	    }
	     
	    public User(String name, String password, String email,String gender,String phonenumber) {
	        this.name = name;
	        this.password = password;
	        this.email = email;
	        this.gender=gender;
	        this.phonenumber=phonenumber;
	    }
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	private String name,password;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
	


}
