<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <h1>Employee list</h1>
    <table border="1">
        <thead>Name</thead>
        <thead>Email</thead>
        <thead>Address</thead>
        <thead>Telephone</thead>
        <thead>Action</thead>

        <c:forEach var="employee" items="${listEmployee}">
            <tr>
                <td>${employee.name}</td>
                <td>${employee.email}</td>
                <td>${employee.address}</td>
                <td>${employee.telephone}</td>
                <td>
                    <a href="editEmployee?Id=${employee.id}">edit</a>
                    <a href="deleteEmployee?Id=${employee.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h4>
        new Employee Register <a href="newEmployee?Id">here</a>
    </h4>
</div>
</body>
</html>
