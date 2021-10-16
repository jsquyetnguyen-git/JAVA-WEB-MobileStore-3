package model;

public class Account {
	private String usr, pwd;
	private int role;
	private String name, address, phone;
	private int check;

	public Account() {

	}
	
	public Account(String usr, String pwd, int role) {
		super();
		this.usr = usr;
		this.pwd = pwd;
		this.role = role;
	}

	public Account(String usr, String pwd, int role, String name, String address, String phone, int check) {
		super();
		this.usr = usr;
		this.pwd = pwd;
		this.role = role;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.check = check;
	}

	public String getUsr() {
		return usr;
	}

	public void setUsr(String usr) {
		this.usr = usr;
	}

	public String getAddress() {
		return address;
	}

	public String getPwd() {
		return pwd;
	}

	public int getRole() {
		return role;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getCheck() {
		return check;
	}

	public void setCheck(int check) {
		this.check = check;
	}
}
