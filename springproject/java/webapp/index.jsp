<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Allen Cars | Login</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        background:
            linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.65)),
            url("https://images.unsplash.com/photo-1503376780353-7e6692767b70");
        background-size: cover;
        background-position: center;
        min-height: 100vh;
        color: #fff;
        font-family: 'Segoe UI', sans-serif;
    }

    /* Navbar */
    .navbar-brand {
        font-weight: 800;
        font-size: 1.7rem;
        letter-spacing: 1px;
    }

    /* Glass Card */
    .glass-card {
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(12px);
        border-radius: 20px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        border: none;
    }

    .login-option {
        transition: all 0.3s ease;
        cursor: pointer;
        border-radius: 18px;
        padding: 30px;
    }

    .login-option:hover {
        transform: translateY(-8px);
        background: rgba(255,255,255,0.25);
    }

    .icon-box {
        font-size: 3rem;
        margin-bottom: 15px;
        color: #ffc107;
    }

    .btn-custom {
        border-radius: 30px;
        font-weight: 600;
        padding: 10px 25px;
    }

    footer {
        background: rgba(0,0,0,0.9);
        padding: 15px 0;
        margin-top: 60px;
    }
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-dark bg-dark bg-opacity-75 shadow">
    <div class="container">
        <span class="navbar-brand">
            <i class="bi bi-car-front-fill text-warning"></i> Allen Cars
        </span>
        <span class="navbar-text">
            Premium Pre-Owned Cars You Can Trust
        </span>
    </div>
</nav>

<!-- Main Content -->
<div class="container d-flex align-items-center" style="min-height: 80vh;">
    <div class="row w-100 g-4">

        <!-- Info Section -->
        <div class="col-lg-6">
            <h1 class="fw-bold mb-3">Welcome to Allen Cars</h1>
            <p class="lead">
                Your trusted destination for verified, high-quality pre-owned vehicles.
            </p>

            <ul class="list-unstyled fs-5">
                <li><i class="bi bi-check-circle-fill text-warning"></i> Certified Used Cars</li>
                <li><i class="bi bi-check-circle-fill text-warning"></i> Transparent Pricing</li>
                <li><i class="bi bi-check-circle-fill text-warning"></i> Easy Buying & Selling</li>
                <li><i class="bi bi-check-circle-fill text-warning"></i> Secure & Reliable Platform</li>
            </ul>
        </div>

        <!-- Login Selection -->
        <div class="col-lg-6">
            <div class="glass-card p-4 text-center">
                <h3 class="mb-4 fw-bold">Login As</h3>

                <div class="row g-4">
                    <!-- Admin Login -->
                    <div class="col-md-6">
                        <div class="login-option">
                            <div class="icon-box">
                                <i class="bi bi-shield-lock-fill"></i>
                            </div>
                            <h5 class="fw-bold">Admin</h5>
                            <p class="small">Manage cars, users & listings</p>
                            <a href="/AdminLogin.jsp" class="btn btn-warning btn-custom">
                                Admin Login
                            </a>
                        </div>
                    </div>

                    <!-- User Login -->
                    <!-- User Login -->
<div class="col-md-6">
    <div class="login-option">
        <div class="icon-box">
            <i class="bi bi-person-circle"></i>
        </div>

        <h5 class="fw-bold">User</h5>
        <p class="small">Browse & buy trusted cars</p>

        <!-- Login Button -->
        <a href="userlogin.jsp"
           class="btn btn-outline-light btn-custom w-100 mb-2">
            User Login
        </a>

        <!-- Signup hint -->
        <p class="small mt-1 mb-1" style="color:#e2e8f0;">
            First time here?
        </p>

        <!-- Signup Button -->
        <a href="signup.jsp"
           class="btn btn-warning btn-sm fw-semibold w-100">
            Create Account
        </a>
    </div>
</div>

                </div>

            </div>
        </div>

    </div>
</div>

<!-- Footer -->
<footer>
    <div class="container text-center">
        <small>© 2025 Allen Cars • Driven by Trust</small>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
