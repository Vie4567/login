<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        
        <% if(request.getAttribute("error") != null) { %>
            <p class="error-message"><%= request.getAttribute("error") %></p>
        <% } %>
        
        <% if(request.getParameter("registered") != null && request.getParameter("registered").equals("true")) { %>
            <p class="success-message">Registration successful! Please login.</p>
        <% } %>
        
        <% if(request.getAttribute("success") != null) { %>
            <p class="success-message"><%= request.getAttribute("success") %></p>
        <% } %>
        
        <form action="login" method="post">
            <div>
                <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required
                       value="<%= request.getParameter("username") != null ? request.getParameter("username") : "" %>">
            </div>
            <div>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>
        
        <div class="register-link">
            <p>Don't have an account? <a href="register.jsp">Register here</a></p>
        </div>
    </div>
</body>
</html>
