package cn.edu.aynu.oa.commons.beans;

public class DataManagement {
	private Integer id ;
	private String name ;
	private String mark ;
	private Integer age ;
	private String gender;
	private String belong ;
	private String test_time ;
	private String warning_level ;
	private String testTime ;

	
	public DataManagement() {
		super();
	}
	
	public DataManagement(String name, String mark, Integer age, String gender, String belong, String test_time,
			String warning_level, String testTime) {
		super();
		this.name = name;
		this.mark = mark;
		this.age = age;
		this.gender = gender;
		this.belong = belong;
		this.test_time = test_time;
		this.warning_level = warning_level;
		this.testTime = testTime;
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
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBelong() {
		return belong;
	}
	public void setBelong(String belong) {
		this.belong = belong;
	}
	public String getTest_time() {
		return test_time;
	}
	public void setTest_time(String test_time) {
		this.test_time = test_time;
	}
	public String getWarning_level() {
		return warning_level;
	}
	public void setWarning_level(String warning_level) {
		this.warning_level = warning_level;
	}
	public String getTestTime() {
		return testTime;
	}
	public void setTestTime(String testTime) {
		this.testTime = testTime;
	}
	
	
	@Override
	public String toString() {
		return "Data [name=" + name + ", mark=" + mark + ", age=" + age + ", gender="
				+ gender + ", belong=" + belong +  ", test_time=" + test_time 
				+  ", warning_level=" + warning_level +  ", testTime=" + testTime+ "]";
	}
	
	
	
}
