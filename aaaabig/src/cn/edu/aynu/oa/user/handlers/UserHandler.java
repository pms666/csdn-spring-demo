package cn.edu.aynu.oa.user.handlers;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.aynu.oa.commons.beans.User;
import cn.edu.aynu.oa.commons.vo.Page;
import cn.edu.aynu.oa.user.service.IUserManagerService;


@Controller
@RequestMapping("/test")
public class UserHandler {
	@Autowired
	private IUserManagerService service;
	
	
	@RequestMapping("/userManage.do")
	public String userManage(int pageno,  Model model) {
		
		System.out.println(pageno);
		Page<User> page = service.findCurrentPage(pageno);
		model.addAttribute("page", page);
		
		return "/html/User_management.jsp";
	}
	

	@RequestMapping("/userInsert.do")
	public String userInsert(User user,  Model model) {
		System.out.println(user);
		service.addUser(user);
		return "/html/user_management_add.jsp";
	}
	

	@RequestMapping("/userDelete.do")
	public String userDelete(int id,  Model model) {
		
		service.delete(id);
		return "/test/userManage.do?pageno=1";
	}
	
	@RequestMapping("userRemove.do") 
	public String removeNews(String nids, User user) {
		String[] ids = nids.split(",");
		for (String string : ids) {
			int id = Integer.parseInt(string);
			service.removeUserById(id);
		}
		return "/test/userManage.do?pageno=1";
	}


	
	@RequestMapping("/toUserUpdate.do")
	public String toUserUpdateId(int id,  Model model) {
		
		User user= service.findUserById(id);
		System.out.println(id);
		model.addAttribute("user", user);
		return "/html/user_management_password.jsp";
	}

	@RequestMapping("/userUpdate.do")
	public String userUpdate(User user,  Model model) {
		
		service.modifyUser(user);
		System.out.println(user);
		System.out.println("111");
		/*return "/html/user_management_password.jsp";*/
		return "/test/toUserUpdate.do";
	}

	@RequestMapping("/toUserUpdate2.do")
	public String toUserUpdateId2(int id,  Model model) {
		
		User user= service.findUserById(id);
		System.out.println(id);
		model.addAttribute("user", user);
		return "/html/user_management_edit.jsp";
	
}

	@RequestMapping("/userUpdate2.do")
	public String userUpdate2(User user,  Model model) {
		
		service.modifyUser(user);
		System.out.println(user);
		System.out.println("222");
		/*return "/html/user_management_password.jsp";*/
		return "/test/toUserUpdate2.do";
	}
	
	@RequestMapping("/toUserUpdateShow.do")
	public String toUserUpdateShow(int id,  Model model) {
		
		User user= service.findUserById(id);
		System.out.println(id);
		model.addAttribute("user", user);
		System.out.println("显示成功");
		return "/html/user_management_show.jsp";
	}	

}































