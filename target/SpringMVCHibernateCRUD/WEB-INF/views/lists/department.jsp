
<%--
  Created by IntelliJ IDEA.
  User: ghostnex
  Date: 19/10/20
  Time: 10.55
  To change this template use File | Settings | File Templates.
--%>

    <h1>Department list</h1>
    <table border="1">
        <thead>Name</thead>

        <c:forEach var="department" items="${listdepartment}">
            <tr>
                <td>${department.name}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/department/editDepartment?id=${department.id}">edit</a>
                    <a href="${pageContext.request.contextPath}/department/deleteDepartment?id=${department.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h4>
        add Department <a href="${pageContext.request.contextPath}/department/newDepartment?id">here</a>
    </h4>
