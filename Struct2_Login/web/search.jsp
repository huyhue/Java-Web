<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <font color="red">
        Welcome, <s:property value="%{#session.USERNAME}" />
        </font>
        <h1>Search Page!!!</h1>
        <s:form action="searchLikeLastname">
            <s:textfield name="searchValue" label="Search Value" /><br>
            <s:submit value="Search"/>
        </s:form><br/>

        <s:if test="%{searchValue != '' and searchValue != null}">
            <s:if test="%{listAccounts != null}">
                Result of Search <br/>
                <table border="1">
                    <thead>
                        <tr>
                            <th>NO.</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Last name</th>
                            <th>isAdmin</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="listAccounts" status="dto">
                            <s:form action="updateRecord" theme="simple">
                                <tr>
                                    <td><s:property value="%{#dto.count}"/>.</td>
                                    <td>
                                        <s:property value="username"/>
                                        <s:hidden name="username" value="%{username}"/>
                                    </td>
                                    <td>
                                        <s:textfield name="password" value="%{password}"/>
                                    </td>
                                    <td>
                                        <s:property value="lastname"/>
                                    </td>
                                    <td>
                                        <s:checkbox name="role" value="%{role}"/>
                                    </td>
                                    <td>
                                        <s:url id="deleteLink" action="deleteRecord">
                                            <s:param name="pk" value="username"/>
                                            <s:param name="lastSearchValue" value="searchValue"/>
                                        </s:url>
                                        <s:a href="%{deleteLink}">Delete</s:a>
                                    </td>
                                    <td>
                                        <s:hidden name="lastSearchValue" value="%{searchValue}"/>
                                        <s:submit value="Update"/>
                                    </td>
                                </tr>
                            </s:form>
                        </s:iterator>
                    </tbody>
                </table>
            </s:if>
            <s:if test="%{listAccounts == null}">
                <h2>No record is matched!!!</h2>
            </s:if>
        </s:if>
    </body>
</html>
