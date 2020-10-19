<%--
  Created by IntelliJ IDEA.
  User: ghostnex
  Date: 20/10/20
  Time: 01.22
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <c:choose>
        <c:when test="${listdepartment!=null}"><%@include file="lists/department.jsp"%></c:when>
        <c:when test="${listemployee!=null}"><%@include file="lists/employee.jsp"%></c:when>
    </c:choose>
</div>
</body>
</html>
