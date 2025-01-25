<%--
  Created by IntelliJ IDEA.
  User: Dinu
  Date: 1/24/2025
  Time: 5:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{

            background-image: url("imges/img_41.png");
        }
        .form-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 30px;
            background-color: #f5f5f5;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<% String passwordMisMatch = request.getParameter("passwordMisMatch"); %>
<% String saveSuccessful = request.getParameter("saveSuccess");%>
<section class="h-100 bg-gradient">

<div class="container my-5">
    <div class="form-container">
        <h2 class="mb-4">Customer Registration</h2>
        <form action="register" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" placeholder="Enter your name">
            </div>
            <div class="form-outline mb-4">
                <label class="form-label" for="userType">User Type</label>
                <select id="userType" name="userType" class="form-select form-select-lg" required>
                    <option value="" disabled selected>Select User Type</option>
                    <option value="admin">Admin</option>
                    <option value="customer">Customer</option>
                </select>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Enter your email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" placeholder="Enter a password">
            </div>
            <div class="form-group">
                <label for="password">Password Comform</label>
                <input type="password" class="form-control" id="passwordComform" placeholder="Enter a password">
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="tel" class="form-control" id="phone" placeholder="Enter your phone number">
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <textarea class="form-control" id="address" rows="3" placeholder="Enter your address"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
    </div>
</div>
                                <%%>
</body>
</html>
</body>
</html>
