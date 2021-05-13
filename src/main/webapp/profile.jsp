<%@ page import="dao.AccountDao" %>
<%@ page import="dao.AccountDAOImpl" %>
<%@ page import="entity.Account" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
    <jsp:useBean id="user" scope="session" class="entity.Account"></jsp:useBean>
    <%@include file="header.jsp"%>
    <div style="margin: 50px auto; width: 80%; border: #000000 solid 1px">
        <h3>Username: <%=user.getUsername()%></h3>
        <h3>Phone Number: <%=user.getPhone_num()%></h3>
        <h3>Email: <%=user.getEmail()%></h3>
    </div>
</body>
</html>
