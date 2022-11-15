package com.javatpoint.mypack;

public class Faculty {
	private int id;
	private String name;
	private String password;
	private String email;
	private String gender;
	private String phonenumber;
	
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public Faculty()
	{
		
	}
	public Faculty(int id)
	{
		this.id=id;	
		}
	public Faculty(int id,String name,String password,String email,String gender,String phonenumber)
	{
		this(name,password,email,gender,phonenumber);
		this.id=id;	
	}
	public Faculty(String name,String password,String email,String gender,String phonenumber)
	{
		this.name=name;
		this.password=password;
		this.email=email;
		this.gender=gender;
		this.phonenumber=phonenumber;
		
	}
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
	
	

}
