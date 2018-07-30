package cn.edu.aynu.oa.user.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.aynu.oa.commons.beans.User;
import cn.edu.aynu.oa.commons.constant.Constants;
import cn.edu.aynu.oa.commons.vo.Page;
import cn.edu.aynu.oa.user.dao.IUserManagerDao;
import cn.edu.aynu.oa.user.service.IUserManagerService;

@Service
public class UserManagerServiceImpl implements IUserManagerService {
	@Autowired
	private IUserManagerDao dao;

	@Override
	public Page<User> findCurrentPage(int pageno) {
			
			
			Page<User> page = new Page<>(pageno, Constants.PAGE_SIZE);
			// 查询出总记录数
			long totalRows = dao.selectTotalRows();
			page.setTotalRows(totalRows);
			
			// 查询出当前页包含的栏目详情
			int pageStartIndex = page.getPageStartIndex();
			int pageSize = page.getPageSize();
			Map<String, Object> map = new HashMap<>();
			map.put("pageStartIndex", pageStartIndex);
			map.put("pageSize", pageSize);
			
			List<User> datas = dao.selectCurrentPgaeUser(map);
			page.setDatas(datas);
			return page;
		
	}

	@Override
	public void addUser(User user) {

		dao.insertUser(user);
	}

	@Override
	public void delete(int id) {
		dao.deleteById(id);
	}

	@Override
	public User findUserById(int id) {
		return dao.selectUserById(id);
	}

	@Override
	public void modifyUser(User user) {

		dao.updateUser(user);
	}

	@Override
	public void removeUserById(int id) {
		dao.deleteUserById(id) ;
	}
}
