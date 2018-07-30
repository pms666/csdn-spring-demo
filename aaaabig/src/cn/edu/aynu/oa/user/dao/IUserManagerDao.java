package cn.edu.aynu.oa.user.dao;

import java.util.List;
import java.util.Map;

import cn.edu.aynu.oa.commons.beans.User;

public interface IUserManagerDao {

	public List<User> selectCurrentPgaeUser(Map<String, Object> map);

	public long selectTotalRows();

	public void insertUser(User user);

	public void deleteById(int id);

	public User selectUserById(int id);

	public void updateUser(User user);

	public void deleteUserById(int id);

}
