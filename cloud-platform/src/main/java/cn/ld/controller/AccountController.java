package cn.ld.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import cn.ld.service.IAccountService;


@Controller
@RequestMapping(value="/")
public class AccountController {
	
	@Resource
	private IAccountService accountService;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "login";
	}

	@RequestMapping(value="/login",method=RequestMethod.POST)
		public String loginAndIndex(HttpServletRequest request,HttpServletResponse response){
		
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		boolean flag = accountService.testPassWord(userName, passWord);
		if(flag){
			System.out.println("登陆成功");
			HttpSession session = request.getSession();
			session.setAttribute("uuid", userName+passWord);
			session.setMaxInactiveInterval(30*5);
			return "redirect:/data";
			
		}else{
			return "error";
		}
			
		}
	

}
