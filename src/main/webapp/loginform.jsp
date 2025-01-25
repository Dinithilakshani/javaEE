<%--
  Created by IntelliJ IDEA.
  User: Dinu
  Date: 1/14/2025
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet" >
    <style >
        body {
            background-color: #333333;
            height: 100vh;
        }
        .login-container {
            max-width: 400px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .brand-logo {
            width: 80px;
            height: 80px;
            background: #007bff;
            border-radius: 50%;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 2rem;
        }
        .form-control:focus {
            box-shadow: none;
            border-color: #007bff;
        }
        .login-btn {
            padding: 10px 20px;
        }
        .divider {
            display: flex;
            align-items: center;
            text-align: center;
            margin: 20px 0;
        }
        .divider::before,
        .divider::after {
            content: '';
            flex: 1;
            border-bottom: 1px solid #dee2e6;
        }
        .divider span {
            padding: 0 10px;
            color: #6c757d;
            background: white;
        }
    </style>
</head>
<body>
<form action="loginform" method="post">
<div class="container h-100">
    <div class="row h-100 align-items-center justify-content-center">
        <div class="col-12">
            <div class="login-container p-5 mx-auto">
                <div class="text-center mb-4">
                    <div class="brand-logo mb-3">
                        <i class="fas fa-user"></i>
                    </div>
                    <h2>Welcome Back</h2>
                    <p class="text-muted">Please login to your account</p>
                </div>

                <form>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="email" placeholder="name@example.com" required>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" placeholder="Enter your password" required>
                    </div>

                    <div class="mb-3 d-flex justify-content-between">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="remember">
                            <label class="form-check-label" for="remember">Remember me</label>
                        </div>
                        <a href="#" class="text-decoration-none">Forgot Password?</a>
                    </div>

                    <button type="submit" class="btn btn-primary w-100 login-btn mb-3">Login</button>
                </form>

                <div class="divider">
                    <span>or</span>
                </div>

                <div class="d-grid gap-2">
                    <button class="btn btn-outline-dark">
                        <i class="fab fa-google me-2"></i>Continue with Google
                    </button>
                    <button class="btn btn-outline-dark">
                        <i class="fab fa-facebook me-2"></i>Continue with Facebook
                    </button>
                </div>

                <div class="text-center mt-4">
                    <span>Don't have an account? </span>
                    <a href="register.jsp" class="text-decoration-none">Sign up</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
</form>
</body>
</html>