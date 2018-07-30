package cn.edu.aynu.oa.home.dao;

import java.util.List;
import java.util.Map;

import cn.edu.aynu.oa.commons.beans.Genre;
import cn.edu.aynu.oa.commons.beans.Home;

public interface IHomeDao {

	void insertHome(Home home);

	List<Genre> selectAllGenre();

	List<Home> selectAll();

	void deleteHome(Integer id);

	long selectTotalRows();


	List<Home> selectCurrentPgaeHome(Map<String, Object> map);

}
