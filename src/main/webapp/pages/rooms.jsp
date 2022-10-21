<%@ page import="com.simplon.holidayhotel.models.Room" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
<html>
<head>
    <title>Hotel - Rooms</title>
</head>
<body>
<p>welcome to rooms page</p>
<% Room[] rooms = (Room[]) request.getAttribute("rooms");%>
<%-- if rooms length is more than 0 show rooms by get Id if not show we have no rooms right now--%>
<% if (rooms.length > 0) { %>
    <% for (Room room : rooms) { %>
        <p><%= room.getId() %></p>
    <% } %>
<% } else { %>
    <p>we have no rooms right now</p>
<% } %>
</body>
</html>