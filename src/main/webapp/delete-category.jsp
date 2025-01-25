<%--
  Created by IntelliJ IDEA.
  User: Dinu
  Date: 1/17/2025
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container my-5">
    <h2>Category Management</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Category ID</th>
            <th>Name</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Electronics</td>
            <td>
                <button class="btn btn-primary btn-sm">Edit</button>
                <button class="btn btn-danger btn-sm">Delete</button>
            </td>
        </tr>
        </tbody>
    </table>

    <h3>Add Category</h3>
    <form>
        <div class="form-group">
            <label for="categoryName">Category Name</label>
            <input type="text" class="form-control" id="categoryName" placeholder="Enter category name">
        </div>
        <div class="form-group">
            <label for="categoryDescription">Description</label>
            <textarea class="form-control" id="categoryDescription" rows="3" placeholder="Enter category description"></textarea>
        </div>
        <button type="submit" class="btn btn-success">Add Category</button>
    </form>
</div>
</body>
</html>