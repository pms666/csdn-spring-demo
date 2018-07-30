package cn.edu.aynu.oa.datamanagement.dao;

import java.util.List;
import java.util.Map;

import cn.edu.aynu.oa.commons.beans.DataManagement;


public interface IAddDataDao {

	void insertData(DataManagement datam);

	void deleteData(int id);

	long selectAllRows();

	List<DataManagement> selectCurrentPageColumn(Map<String, Object> map);

	DataManagement findById(int pid);

}
