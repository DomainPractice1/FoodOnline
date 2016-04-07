<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
following is list
	<s:action name="ShowDishAction"/>                        
 <s:select label="事务类型" headerKey="0"  
 headerValue="--请选择事务类型--"   list="#request.dishList" emptyOption="true"
 listKey="sortId" listValue="name"/> 
 up is list
</body>
</html>