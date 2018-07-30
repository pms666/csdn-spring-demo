package cn.edu.aynu.oa.commons.beans;

import org.springframework.web.multipart.MultipartFile;

/**
 * 子类 one
 * 各个模块的具体信息
 * 
 * */
public class Home {
    private int id;
    private Integer gid;
    private String topic;
    private MultipartFile  file;
    private String filesrc;
    private String  time;
    private String content;
    private String status;
    //域属性 从这里可以查到父类
    private  Genre genre;
    
	public Genre getGenre() {
		return genre;
	}
	public void setGenre(Genre genre) {
		this.genre = genre;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getFilesrc() {
		return filesrc;
	}
	public void setFilesrc(String filesrc) {
		this.filesrc = filesrc;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Home [id=" + id + ", gid=" + gid + ", topic=" + topic + ", file=" + file + ", filesrc=" + filesrc
				+ ", time=" + time + ", content=" + content + ", status=" + status + ", genre=" + genre + "]";
	}
	

}