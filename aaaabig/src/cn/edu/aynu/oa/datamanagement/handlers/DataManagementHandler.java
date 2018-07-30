package cn.edu.aynu.oa.datamanagement.handlers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.aynu.oa.commons.beans.DataManagement;
import cn.edu.aynu.oa.commons.vo.Page;
import cn.edu.aynu.oa.datamanagement.service.IDataManagementService;

@Controller
@RequestMapping("/data")
public class DataManagementHandler {
	@Autowired
	private IDataManagementService service ;
	
	
	@RequestMapping("/search.do")
	public String SearchHandler(int pageno , @RequestParam(defaultValue="0") int pid,Model model) {
		
		Page<DataManagement> page = service.serachData(pageno,pid);
		
		model.addAttribute("pages",page) ;
		
		System.out.println(page);
		
		return "/html/main.jsp" ;
		
	}
	
	@RequestMapping("/searchForData.do")
	public String SearchForDataHandler(int pageno ,@RequestParam(defaultValue="0") int pid,Model model) {
		
		Page<DataManagement> page = service.serachData(pageno,pid);
		
		model.addAttribute("pages",page) ;
		
		System.out.println(page);
		
		return "/html/shujutongji.jsp" ;
		
	}
	@RequestMapping("/searchForLook.do")
	public String SearchForLookHandler(int pid,Model model) {
		
		DataManagement datam = service.findById(pid);
		
		model.addAttribute("datam",datam) ;
		
		System.out.println(datam);
		System.out.println("-------------");
		
		return "/html/person_look.jsp" ;
		
	}
	@RequestMapping("/searchForShuLook.do")
	public String SearchForShuLookHandler(int pid,Model model) {
		
		DataManagement datam = service.findById(pid);
		
		model.addAttribute("datam",datam) ;
		
		/*System.out.println(datam);
		System.out.println("-------------");*/
		
		return "/html/sjtj_person_look.jsp" ;
		
	}
	
	@RequestMapping("/add.do")
	public String AddHandler(DataManagement datam) {
		
		System.out.println(datam);
		service.addDataManagement(datam);
		
		return "/html/person_add.jsp" ;
		
	}
	
	@RequestMapping("/delete.do")
	public String DeleteHandler(int id) {
		System.out.println("int id");
		service.deleteDataManagement(id);
		
		return "/searchForData.do?pageno=1" ;
	}
	
	
	@RequestMapping("/deleteForShu.do")
	public String DeleteForShuHandler(int id) {
		
		service.deleteDataManagement(id);
		
		return "searchForData.do?pageno=1" ;
	}
	
	
	
	
}
