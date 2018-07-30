package cn.edu.aynu.oa.datamanagement.service;

import cn.edu.aynu.oa.commons.beans.DataManagement;
import cn.edu.aynu.oa.commons.vo.Page;

public interface IDataManagementService {

	void addDataManagement(DataManagement datam);

	void deleteDataManagement(int id);


	Page<DataManagement> serachData(int pageno,int pid);

	DataManagement findById(int pid);

}
