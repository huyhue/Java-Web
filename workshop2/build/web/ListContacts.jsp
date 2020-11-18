<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Contacts Page</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">List Of Contacts</h1>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Group</th>
                        <th scope="col">Phone Number</th>
                        <th scope="col">Operations</th>
                    </tr>
                </thead>
                <tbody>
                    <s:iterator value="listAccounts" status="dto">
                        <tr>
                            <td><s:property value="%{#dto.count}"/>.</td>
                            <td>
                                <s:property value="firstname"/>
                                <s:hidden name="firstname" value="%{firstname}"/>
                            </td>
                            <td>
                                <s:property value="lastname"/>
                            </td>
                            <td>
                                <s:property value="group"/>
                            </td>
                            <td>
                                <s:property value="phone"/>
                            </td>
                            <td>
                                <s:url id="deleteLink" action="deleteRecord">
                                    <s:param name="pk" value="firstname"/>
                                </s:url>
                                <s:a href="%{deleteLink}">Delete |</s:a>
                                <s:url id="edit" action="edit">
                                    <s:param name="pk" value="firstname"/>
                                </s:url>
                                <s:a href="%{edit}" >Edit </s:a>
                            </td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table> 
            <a class="btn btn-secondary" href="/Struct2AuthFilter" role="button">Add Contact</a>
            <a class="btn btn-primary" href="ListGroups.jsp" role="button">List Group</a>
        </div>

    </body>
</html>
