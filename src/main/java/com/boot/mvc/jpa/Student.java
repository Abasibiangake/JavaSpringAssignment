package com.boot.mvc.jpa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student {

	@Id
	@Column(name="studentid")
	private int studentId;
	@Column(name="username")
	private String userName;
	private String password;
	private String firstname;
	private String lastname;
	private String address;
	private String city;
	@Column(name="postalcode")
	private String postalCode;
	@Column(name="stdphone")
	private int stdPhone;
	@Column(name="doctorname")
	private String doctorName;
	@Column(name="docphone")
	private int docPhone;
	
	public Student() {
		
	}

	public Student(int studentId, String userName, String password, String firstname, String lastname, String address,
			String city, String postalCode, int stdPhone, String doctorName, int docPhone) {
		super();
		this.studentId = studentId;
		this.userName = userName;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
		this.address = address;
		this.city = city;
		this.postalCode = postalCode;
		this.stdPhone = stdPhone;
		this.doctorName = doctorName;
		this.docPhone = docPhone;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public int getStdPhone() {
		return stdPhone;
	}

	public void setStdPhone(int stdPhone) {
		this.stdPhone = stdPhone;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public int getDocPhone() {
		return docPhone;
	}

	public void setDocPhone(int docPhone) {
		this.docPhone = docPhone;
	}
	
	
}
