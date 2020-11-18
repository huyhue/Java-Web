<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Contact Page</title>
        <s:head/>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Add a Contact</h1>
            <s:form action="addContact" method="post">
                <s:textfield name="firstname" label="First Name"/>
                <s:textfield name="lastname" label="Last Name"/>
                <s:combobox list="listGroup" name="group" label="Group"/>
                <s:textfield name="phone" label="Phone Number"/>
                <s:submit cssClass="btn btn-primary" value="Add"/>
            </s:form>
            <a href="listContact " class="btn btn-secondary active" role="button" aria-pressed="true">Return To Contact List</a>
    </div>
</body>
</html>
