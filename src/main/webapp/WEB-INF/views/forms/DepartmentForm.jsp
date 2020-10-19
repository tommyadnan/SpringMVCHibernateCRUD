<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <h1>New/Edit Contact</h1>
    <%--@elvariable id="department" type="com.bootcamp.model.Department"--%>
    <form:form action="saveDepartment" method="post" modelAttribute="department">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Name :</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form:form>
