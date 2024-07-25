<%@ page isErrorPage="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Log In</title>
  <link rel="stylesheet" href="styles/main.css">
  <link rel="stylesheet" href="styles/form.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
  <!-- <header class="header">
    <nav class="navbar">
      <a href="#">Home</a>
      <a href="#">About</a>
      <a href="#">Services</a>
      <a href="#">Contact</a>
    </nav>
    <form action="#" class="search-bar">
      <input type="text" placeholder="Search...">
      <button type="submit"><i class='bx bx-search'></i></button>
    </form>
  </header> -->

  <div class="background"></div>

  <div class="container">
    <div class="content">
      <h2 class="logo"><i class='logo-main-content'></i> Tienda X</h2>
      <div class="text-sci">
        <h2>Welcome!<br><span>To Our New Website.</span></h2>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id, consectetur?</p>
        <div class="social-icons">
          <a href="#"><i class='bx bxl-linkedin' ></i></a>
          <a href="#"><i class='bx bxl-facebook' ></i></a>
          <a href="#"><i class='bx bxl-instagram' ></i></a>
          <a href="#"><i class='bx bxl-twitter' ></i></a>
        </div>
      </div>
    </div>
    <div class="logreg-box">
      <div class="form-box">
        <form action="/login" method="post">
          <h2>Sign In</h2>
          <div class="input-box">
              <span class="icon"><i class='bx bxs-envelope'></i></span>
              <input type="email" name="email" id="email" required>
              <label>Email</label>
          </div>

          <div class="input-box">
              <span class="icon"><i class='bx bxs-lock-alt'></i></span>
              <input type="password" name="password" id="password" required>
              <label>Password</label>
          </div>

          <div class="remember-forgot">
            <label><input type="checkbox">Remember me</label>
            <a href="#">Forgot password?</a>
          </div>

          <button type="submit" class="btn">Sign In</button>

          <div class="login-register">
            <p>Don't have an account? <a href="/register" class="register-link">Sign up</a></p>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
<script src="scripts/form.js"></script>
</html>