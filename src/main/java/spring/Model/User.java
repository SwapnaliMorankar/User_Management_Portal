package spring.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	private String name;
	private String email;
	private String gender;
	private String city;
	private String address;
	private String password;
	private String confirmPassword;
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public User(int iD, String name, String email, String gender, String city, String address, String password,
			String confirmPassword) {
		super();
		ID = iD;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.city = city;
		this.address = address;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [ID=" + ID + ", name=" + name + ", email=" + email + ", gender=" + gender + ", city=" + city
				+ ", address=" + address + ", password=" + password + ", confirmPassword=" + confirmPassword + "]";
	}
	
	
	

}
