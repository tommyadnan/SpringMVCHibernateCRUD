
<%--
  Created by IntelliJ IDEA.
  User: ghostnex
  Date: 19/10/20
  Time: 10.55
  To change this template use File | Settings | File Templates.
--%>

    <h1>Employee list</h1>
    <table border="1">
        <thead>Name</thead>
        <thead>Email</thead>
        <thead>Address</thead>
        <thead>Telephone</thead>
        <thead>Department</thead>
        <thead>Action</thead>

        <c:forEach var="employee" items="${listemployee}">
            <tr>
                <td>${employee.name}</td>
                <td>${employee.email}</td>
                <td>${employee.address}</td>
                <td>${employee.telephone}</td>
                <td>${employee.department.name}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/employee/editEmployee?id=${employee.id}">edit</a>
                    <a href="${pageContext.request.contextPath}/employee/deleteEmployee?id=${employee.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h4>
        new Employee Register <a href="${pageContext.request.contextPath}/employee/newEmployee?id">here</a>
    </h4>
