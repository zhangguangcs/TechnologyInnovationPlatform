<%@page import="com.jaovo.msg.Util.DaoFactory"%>
<%@page import="com.jaovo.msg.dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	int id = Integer.parseInt(request.getParameter("id"));
%>
<%
	
	//工厂模式
	UserDaoImpl userDao = DaoFactory.getDaoImpl();
	userDao.delete(id);
	response.sendRedirect("./list.jsp");
%>