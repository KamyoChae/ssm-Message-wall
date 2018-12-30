package com.ssm.handlers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ssm.beans.User;
import com.ssm.service.IUserService;

@Controller
public class UserController{
	
	@Autowired
	@Qualifier("userService")
	private IUserService service;
	
	public void setService(IUserService service) {
		this.service = service;
	}
	
	@RequestMapping("/register.do")
	public String doRegister(User user){
		service.addUser(user);
		return "/login.jsp";
	}
	
	@RequestMapping("/login.do")
	public String doLogin(String name, String password,HttpServletRequest request){
		String result = null;
		User user = new User();
		user.setName(name);
		user.setPassword(password);
		User flag = service.queryUser(user);
		if(flag != null){
			request.getSession().setAttribute("user", flag);
			result = "/index.do";
		}
		else
			result = "login.jsp";
		return result;
	}
	
	@RequestMapping("/updateInfo.do")
	public String updateInfo(User user, HttpServletRequest request){
		service.updateInfo(user);
		User flag = service.queryUserByName(user.getName());
		request.getSession().setAttribute("user", flag);
		return "/userInfo.jsp";
	}
	
}
