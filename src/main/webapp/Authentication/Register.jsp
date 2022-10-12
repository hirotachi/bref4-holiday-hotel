<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/12/2022
  Time: 6:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<h1>Register</h1>
<form action="Login" method="POST">
    <input placeholder="Full Name" type="text" name="full_name" value="Youness" required />
    <input placeholder="Email" type="email" name="email" value="maska@gmail.com" required />
    <input placeholder="Password" type="password" name="password" value="maska04" required />
    <button type="submit">Login</button>
</form>

<a href="/">Back</a>
</body>
</html>
