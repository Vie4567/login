<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        .nav-links {
            margin: 20px 0;
            padding: 10px;
            background-color: #f5f5f5;
            border-radius: 5px;
        }
        .nav-links a {
            margin-right: 15px;
            text-decoration: none;
            color: #0066cc;
        }
        .nav-links a:hover {
            text-decoration: underline;
        }
        .logout {
            float: right;
            color: #cc0000;
            text-decoration: none;
        }
        .user-info {
            margin-top: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <%
        // Check if user is logged in
        User user = (User) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>
    <div class="container">
        <a href="logout" class="logout">Logout</a>
        <h2>Welcome, <%= user.getUsername() %>!</h2>
        
        <div class="nav-links">
            <a href="admin/category/list">Category Management</a>
            <!-- Thêm các liên kết khác ở đây nếu cần -->
        </div>
        
        <div class="user-info">
            <p><strong>Username:</strong> <%= user.getUsername() %></p>
            <p><strong>Email:</strong> <%= user.getEmail() %></p>
            <p><strong>User ID:</strong> <%= user.getId() %></p>
        </div>
    </div>
</body>
</html>
