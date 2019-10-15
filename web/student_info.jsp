<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<sql:query var="listStudents" dataSource="jdbc/ClassManagement">
    select StudentID, FirstName, LastName, Address, Telephone, Email from Student;
</sql:query>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Users List</title>
</head>
<body>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of student</h2></caption>
        <tr>
            <th>Id</th>
            <th>Firstanem</th>
            <th>LasName</th>
            <th>Address</th>
            <th>Telephone</th>
            <th>Email</th>
        </tr>
        <c:forEach var="p" items="${listStudents.rows}">
            <tr>
                <td><c:out value="${p.StudentID}" /></td>
                <td><c:out value="${p.FirstName}" /></td>
                <td><c:out value="${p.LastName}" /></td>
                <td><c:out value="${p.Address}" /></td>
                <td><c:out value="${p.Telephone}" /></td>
                <td><c:out value="${p.Email}" /></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>