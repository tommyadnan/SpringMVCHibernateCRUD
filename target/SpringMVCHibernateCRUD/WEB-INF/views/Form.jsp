<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%--
  Created by IntelliJ IDEA.
  User: ghostnex
  Date: 19/10/20
  Time: 10.55
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <c:choose>
        <c:when test="${department!=null}"><%@include file="forms/DepartmentForm.jsp"%></c:when>
        <c:when test="${employee!=null}"><%@include file="forms/EmployeeForm.jsp"%></c:when>
    </c:choose>
</div>
</body>
</html>
