package org.tarena.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.tarena.service.UserService;

@Controller
public class LoginController {
	@Resource(name = "userService")
	private UserService userService;

	@RequestMapping("/login")
	public String login(HttpServletRequest req, HttpServletResponse resp,
			@RequestParam(value = "userName") String userName,
			@RequestParam(value = "password") String password) {
		int result = 0; // 0 代表登录成功，1代表用户名不存在，2密码错误,3代表错误
		result = userService.login(req, resp, userName, password);
		if (result == 3)
			return "redirect:/error.html";
		System.out.println("rrrrrrrrrrrrrrrr");
		req.setAttribute("result", result);
		return "forward:/login.jsp";
	}

	@RequestMapping("/regist")
	public String regist(HttpServletRequest req, HttpServletResponse resp,
			@RequestParam(value = "userName") String userName,
			@RequestParam(value = "password") String password,@RequestParam("valCode") String valCode) {
		int result = 0; // 0 代表註冊成功，1代表用户名已存在 2代表错误，3代表验证码错误
		result = userService.regist(req, resp, userName, password,valCode);
		System.out.println(result);
		if (result == 2)
			return "redirect:/error.html";
		req.setAttribute("result", result);
		return "forward:/regist.jsp";
	}

	@RequestMapping("/loginOut")
	public String loginOut(HttpServletRequest req) {
		userService.loginOut(req);
		return "redirect:/login.jsp";
	}
   @RequestMapping("/validate")
   public  String validate(HttpServletRequest req,HttpServletResponse resp){
	   if(userService.getValidate(req, resp));
	   return "";
   }
}
