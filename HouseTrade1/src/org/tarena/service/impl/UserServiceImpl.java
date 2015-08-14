package org.tarena.service.impl;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.tarena.dao.UserDao;
import org.tarena.entity.User;
import org.tarena.service.UserService;
import org.tarena.util.ValidateCodeUtil;
@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource(name="userDao")
    private UserDao userDao;
	@Override
	public int login(HttpServletRequest req, HttpServletResponse resp,
			String userName, String password) {
		if (userName != null && password != null) {
			try {
				User user = userDao.findUserByUserName(userName);
				if(user!=null){
				if (password.equals(user
						.getPassword())) {
					Cookie temp = new Cookie("userName",null);
					temp.setMaxAge(0);
					Cookie uNameCookie = new Cookie("userName", userName);
					uNameCookie.setPath("/");
					resp.addCookie(uNameCookie);
					HttpSession session = req.getSession(true);
					session.setAttribute("user", user);
	
					return 0;
				}else{
					return 2;
				}
				}else{
					return 1;
				}
			} catch (Exception e) {
				e.printStackTrace();
				return 3;
			}
		}else{
			return 3;
		}
		
	}

	@Override
	public int regist(HttpServletRequest req, HttpServletResponse resp,
			String userName, String password,String valCode) {
		HttpSession session  =req.getSession(true);
//		String valCodes=(String) session.getAttribute("valCode");
//		if(valCodes==null||!(valCodes.equals(valCode)))
//			return 3;
		if (userName != null && password != null) {
			try {
				if(userDao.findUserByUserName(userName)==null)	{
				User user = new User();
				user.setUserName(userName);
				user.setPassword(password);
				if (userDao.saveUser(user)) {
					Cookie uNameCookie = new Cookie("userName", userName);
					uNameCookie.setPath("/");
					resp.addCookie(uNameCookie);
					session.setAttribute("user", user);
					return 0;
				}
				}else{
					return 1;
				}
			} catch (Exception e) {
				e.printStackTrace();
				return 2;
			}
		}
		return 2;
	}

	@Override
	public boolean loginOut(HttpServletRequest req) {
		try {
			Cookie uNameCookie = new Cookie("userName",null);
	        uNameCookie.setMaxAge(0);
	        req.getSession(false).invalidate();
	        return true;
		} catch (Exception e) {
			return false;
		}
		 
		
	}

	@Override
	public boolean getValidate(HttpServletRequest req, HttpServletResponse resp) {
		String valCode = ValidateCodeUtil.getAuthCode();
	     HttpSession session = req.getSession(true);
	     session.setAttribute("valCode", valCode);
	     BufferedImage img = ValidateCodeUtil.getAuthImg(valCode);
	     try {
			ImageIO.write(img, "JPEG", resp.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	
}
