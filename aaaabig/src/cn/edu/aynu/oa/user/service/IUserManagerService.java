package cn.edu.aynu.oa.user.service;

import cn.edu.aynu.oa.commons.beans.User;
import cn.edu.aynu.oa.commons.vo.Page;

public interface IUserManagerService {

	public Page<User> findCurrentPage(int pageno);

	public void addUser(User user);

	public void delete(int id);

	public User findUserById(int id);

	public void modifyUser(User user);

	public void removeUserById(int id);
	
	

}
