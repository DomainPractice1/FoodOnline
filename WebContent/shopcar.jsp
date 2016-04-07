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
<div id="a">
  <table width="830" height="100" border="1" align="center">
  <s:action name="ShowShopCarAction"/>
    <tr>
      <td width="128" height="25" align="center"> 购物ID</td>
      <td width="157" align="center">菜品ID</td>
      <td width="147" align="center">菜品名称</td>
      <td width="281" align="center">菜品价格</td>
    </tr>
    <s:iterator value="#request.infoList" id="show" >
    <tr>
      <td><s:property value="#show.shopCar.id"/></td>
      <td><s:property value="#show.shopCar.name"/></td>
      <td><s:property value="#show.dish.name"/></td>
      <td><s:property value="#show.dish.price"/></td>
    </tr>
   </s:iterator>
  </table>
</div>
</body>
</html>