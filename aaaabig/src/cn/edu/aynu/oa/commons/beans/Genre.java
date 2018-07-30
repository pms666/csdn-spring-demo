package cn.edu.aynu.oa.commons.beans;
/**
 * 父类 many
 * 新闻的类别
 * 
 * */
public class Genre {
	private Integer gid;
	private  String gname;
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	@Override
	public String toString() {
		return "Genre [gid=" + gid + ", gname=" + gname + "]";
	}

}
