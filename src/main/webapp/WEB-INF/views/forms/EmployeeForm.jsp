<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <h1>New/Edit Contact</h1>
    <%--@elvariable id="employee" type="com.bootcamp.model.Employee"--%>
    <form:form action="saveEmployee" method="post" modelAttribute="employee">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Name :</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><form:input path="address"/></td>
            </tr>
            <tr>
                <td>Telephone</td>
                <td><form:input path="telephone"/></td>
            </tr>
            <tr>
                <td>Department</td>
                <td>
                    <form:input path="department.name"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form:form>
