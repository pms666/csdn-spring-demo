package cn.edu.aynu.oa.commons.beans;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {

	private Integer id;
	private String name;
	private String password;
	private String userRows;
	private String sex;
	private Date date;
	private String filesrc;
	
	
	
	
	public String getFilesrc() {
		return filesrc;
	}
	public void setFilesrc(String filesrc) {
		this.filesrc = filesrc;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
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
	public String getUserRows() {
		return userRows;
	}
	public void setUserRows(String userRows) {
		this.userRows = userRows;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getdate() {
		return date;
	}
	public void setdate(Date date) {
		this.date = date;
	}
	
	
	public User(String name, String password, String userRows, String sex, Date date, String filesrc) {
		super();
		this.name = name;
		this.password = password;
		this.userRows = userRows;
		this.sex = sex;
		this.date = date;
		this.filesrc = filesrc;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", userRows=" + userRows + ", sex="
				+ sex + ", date=" + date + "]";
	}
	
	
	
}
