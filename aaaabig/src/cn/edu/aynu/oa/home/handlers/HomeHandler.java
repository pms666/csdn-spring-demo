package cn.edu.aynu.oa.home.handlers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.aynu.oa.commons.beans.Genre;
import cn.edu.aynu.oa.commons.beans.Home;
import cn.edu.aynu.oa.commons.vo.Page;
import cn.edu.aynu.oa.home.service.IHomeServie;

@Controller
@RequestMapping("/home")
public class HomeHandler {
@Autowired
private IHomeServie hservice;
/*	@Resource(name="hservice")
	private IHomeServie hservice;

	public void setHservice(IHomeServie hservice) {
		this.hservice = hservice;
	}*/
	
	
	@RequestMapping("/homeManage.do")
	public String userManage(int pageno,  Model model) {
		
		System.out.println(pageno);
		Page<Home> page = hservice.findCurrentPage(pageno);
		model.addAttribute("page", page);
		
		return "/html/home.jsp";
	}
	
	
	@RequestMapping("/queryAll.do")
	public ModelAndView queryAll(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<Home> homes= hservice.queryAll();
		session.setAttribute("homes", homes);
		mv.setViewName("/html/home/home.jsp");
		return mv;
	}
	
	@RequestMapping("/addHomeHou.do")
	public ModelAndView addBookHou(HttpSession session,Home home,ModelAndView mv) 
			throws IllegalStateException,IOException{
		//上传文件路径
		String realPath = session.getServletContext().getRealPath("/images/home_img/");
		//文件名称
		String filesrc = home.getFile().getOriginalFilename();
		//将文件保存到硬盘中
		home.getFile().transferTo(new File(realPath+File.separator+filesrc));
		home.setFilesrc("images/home_img/"+filesrc);
		hservice.addHome(home);
		mv.addObject("xiaoxi", "添加成功");
		mv.setViewName("/html/msg.jsp");
		mv.setViewName("/home/homeManage.do?pageno=1");
		return mv;
	}
	@RequestMapping("/removeHome.do")
	public ModelAndView removeHome(Integer id) {
		ModelAndView mv = new ModelAndView();
		hservice.removeHome(id);
		/*mv.addObject("xiaoxi", "删除成功");*/
		System.out.println("删除成功");
		mv.setViewName("/home/homeManage.do?pageno=1");
		return mv;
	}
	@RequestMapping("/queryAllGenre.do")
	public ModelAndView queryAllGenre(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<Genre> genres=hservice.queryAllGenre();
		session.setAttribute("genres", genres);
		mv.setViewName("/html/home_add.jsp");
		return mv;
	}
	@RequestMapping("/modifyHomeQian.do")
	public ModelAndView modifyHomeQian(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<Genre> genres=hservice.queryAllGenre();
		session.setAttribute("genres", genres);
		
		List<Home> homes= hservice.queryAll();
		session.setAttribute("homes", homes);
		System.out.println("修改中");
		mv.setViewName("/html/home_edit.jsp");
		return mv;
	}
	@RequestMapping("/modifyHomeHou.do")
	public ModelAndView modifyHomeHou(HttpSession session,Home home,ModelAndView mv) 
			throws IllegalStateException,IOException{
		System.out.println("111");
		//上传文件路径
		String realPath = session.getServletContext().getRealPath("/images/home_img/");
		//文件名称
		String filesrc = home.getFile().getOriginalFilename();
		//将文件保存到硬盘中
		home.getFile().transferTo(new File(realPath+File.separator+filesrc));
		home.setFilesrc("images/home_img/"+filesrc);
		hservice.addHome(home);
		System.out.println("修改成功");
		mv.setViewName("/html/msg.jsp");
		mv.setViewName("/home/homeManage.do?pageno=1");
		return mv;
	}
}
