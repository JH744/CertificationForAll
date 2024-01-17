<%@page import="com.google.gson.Gson"%>
<%@page import="vo.NewVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.NewDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	NewDAO newdao = new NewDAO();
	
	String u_id = request.getParameter("id");
	ArrayList<NewVO> newList = newdao.findAllNew(u_id);
	Gson gson = new Gson();
	String newList2 = gson.toJson(newList).trim();
%>
<%=newList2%>