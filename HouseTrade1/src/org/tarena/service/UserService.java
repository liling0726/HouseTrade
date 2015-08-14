package org.tarena.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface UserService {
    public int  login(HttpServletRequest req,HttpServletResponse resp,String userName,String password);
    public int  regist(HttpServletRequest req,HttpServletResponse resp,String userName,String password,String valCode);
    public boolean  loginOut(HttpServletRequest req);
    public    boolean getValidate(HttpServletRequest req,HttpServletResponse resp);
}
