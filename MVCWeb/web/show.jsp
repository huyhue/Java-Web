<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Page</title>
    </head>
    <body>
        <font color="red">Welcome, ${sessionScope.USER}</font>
        <h1>Show Result</h1>
        <c:set var="info" value="${requestScope.INFO}"/>
        <c:if test="${not empty info}">
            <table border="1">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Username</th>
                        <th>Name</th>
                        <th>Roles</th>
                        <th>Delete</th>
                        <th>Update</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="count" value="0"/>
                    <c:forEach var="rows" items="${info}">
                    <form action="Controller">
                        <c:set var="count" value="${count + 1}"/>
                        <tr>
                            <td>${count}.</td>
                            <td>${rows.username}
                                <input type="hidden" name="txtUsername" value="${rows.username}" /> 
                            </td>
                            <td>
                                <input type="text" name="txtName" value="${rows.name}" /> 
                            </td>
                            <td> <input type="checkbox" name="chkAdmin" value="ADMIN" 
                                        <c:if test="${rows.roles}">checked</c:if> /> 
                                </td>
                            <c:url var="delete" value="Controller">
                                <c:param name="btAction" value="Delete"/>
                                <c:param name="username" value="${rows.username}"/>
                                <c:param name="txtSearch" value="${param.txtSearch}"/>
                            </c:url>
                            <td><a href="${delete}">Delete</a></td>
                            <td>
                                <input type="hidden" name="txtSearch" value="${param.txtSearch}" />
                                <input type="submit" value="Update" name="btAction" />
                            </td>
                        </tr>
                    </form>
                    </c:forEach>
                </tbody>
            </table>

        </c:if>

        <c:url var="back" value="Controller">
            <c:param name="btAction" value="Back"/>
        </c:url>
        <a href="${back}">Quay tro lai trang Search</a>
    </body>
</html>
