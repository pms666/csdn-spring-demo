package cn.edu.aynu.oa.home.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.aynu.oa.commons.beans.Genre;
import cn.edu.aynu.oa.commons.beans.Home;
import cn.edu.aynu.oa.commons.constant.Constants;
import cn.edu.aynu.oa.commons.vo.Page;
import cn.edu.aynu.oa.home.dao.IHomeDao;
import cn.edu.aynu.oa.home.service.IHomeServie;

@Service
public class HomeServieImpl implements IHomeServie {
	@Autowired
	private IHomeDao hdao;
	/*//	@Resource(name="hdao")
	
	private IHomeDao hdao;
	
	public void setHdao(IHomeDao hdao) {
		this.hdao = hdao;
	}
*/
	
	@Override
	public void addHome(Home home) {
		hdao.insertHome(home);
	}

	@Override
	public List<Genre> queryAllGenre() {
		return hdao.selectAllGenre();
	}

	@Override
	public List<Home> queryAll() {
		return hdao.selectAll();
	}

	@Override
	public void removeHome(Integer id) {
		hdao.deleteHome(id);
	}

	@Override
	public Page<Home> findCurrentPage(int pageno) {
		
		Page<Home> page = new Page<>(pageno, Constants.PAGE_SIZE);
		// 查询出总记录数
		long totalRows = hdao.selectTotalRows();
		page.setTotalRows(totalRows);
		
		// 查询出当前页包含的栏目详情
		int pageStartIndex = page.getPageStartIndex();
		int pageSize = page.getPageSize();
		Map<String, Object> map = new HashMap<>();
		map.put("pageStartIndex", pageStartIndex);
		map.put("pageSize", pageSize);
		
		List<Home> datas = hdao.selectCurrentPgaeHome(map);
		page.setDatas(datas);
		return page;
	}

}
