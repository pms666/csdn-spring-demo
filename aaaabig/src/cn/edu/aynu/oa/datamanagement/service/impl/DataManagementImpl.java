package cn.edu.aynu.oa.datamanagement.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.aynu.oa.commons.beans.DataManagement;
import cn.edu.aynu.oa.commons.constant.Constants;
import cn.edu.aynu.oa.commons.vo.Page;
import cn.edu.aynu.oa.datamanagement.dao.IAddDataDao;
import cn.edu.aynu.oa.datamanagement.service.IDataManagementService;
@Service
public class DataManagementImpl implements IDataManagementService {

	@Autowired
	private IAddDataDao dao ;
	
//	@Transactional(readOnly=true , rollbackFor=Exception.class)
	
	public void addDataManagement(DataManagement datam) {
		dao.insertData(datam) ;
	}

	public void deleteDataManagement(int id) {
		dao.deleteData(id);
	}

	public Page<DataManagement> serachData(int pageno,int pid) {
		
		Page<DataManagement> page = new Page<>(pageno,Constants.PAGE_SIZE);
		
		//��ѯ�ܼ�¼��
		long totalRows = dao.selectAllRows() ;
		page.setTotalRows(totalRows);
				
		//��ѯ��ǰҳ������������
		int pageStartIndex = page.getPageStartIndex() ;
		int pageSize = page.getPageSize() ;
				
		Map<String,Object> map = new HashMap<>() ;
		map.put("pageStartIndex", pageStartIndex) ;
		map.put("pageSize", pageSize) ;
		map.put("pid", pid) ;
				
		List<DataManagement> datas = dao.selectCurrentPageColumn(map) ;
		page.setDatas(datas);	
		
		return page;
		
	}

	@Override
	public DataManagement findById(int pid) {
		return dao.findById(pid);
	}

	

}
