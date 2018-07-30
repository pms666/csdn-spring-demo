package cn.edu.aynu.oa.home.service;

import java.util.List;

import cn.edu.aynu.oa.commons.beans.Genre;
import cn.edu.aynu.oa.commons.beans.Home;
import cn.edu.aynu.oa.commons.vo.Page;

public interface IHomeServie {

	void addHome(Home home);

	List<Genre> queryAllGenre();

	List<Home> queryAll();

	void removeHome(Integer id);

	Page<Home> findCurrentPage(int pageno);

}
