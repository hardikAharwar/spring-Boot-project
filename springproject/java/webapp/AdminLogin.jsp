<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Allen Cars | Admin Login</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        background:
            linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.75)),
            url("https://images.unsplash.com/photo-1493238792000-8113da705763");
        background-size: cover;
        background-position: center;
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #fff;
        font-family: 'Segoe UI', sans-serif;
    }

    /* Glass Card */
    .login-card {
        background: rgba(255, 255, 255, 0.12);
        backdrop-filter: blur(14px);
        border-radius: 22px;
        padding: 40px;
        width: 100%;
        max-width: 420px;
        box-shadow: 0 15px 50px rgba(0,0,0,0.6);
        border: none;
    }

    .brand {
        font-size: 1.8rem;
        font-weight: 800;
        letter-spacing: 1px;
    }

    .brand i {
        color: #ffc107;
    }

    .form-control {
        background: rgba(255,255,255,0.15);
        border: none;
        color: #fff;
        border-radius: 12px;
    }

    .form-control:focus {
        background: rgba(255,255,255,0.2);
        box-shadow: none;
        color: #fff;
    }

    .form-label {
        font-weight: 600;
    }

    .btn-login {
        background: linear-gradient(135deg, #ff512f, #dd2476);
        border: none;
        font-weight: 600;
        border-radius: 30px;
        padding: 10px;
    }

    .btn-login:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 18px rgba(0,0,0,0.5);
    }

    .admin-badge {
        background: rgba(255, 193, 7, 0.15);
        color: #ffc107;
        padding: 6px 14px;
        border-radius: 20px;
        font-size: 0.85rem;
        display: inline-block;
        margin-bottom: 15px;
    }

    footer {
        position: fixed;
        bottom: 10px;
        width: 100%;
        text-align: center;
        font-size: 0.8rem;
        color: rgba(255,255,255,0.6);
    }
</style>
</head>

<body>

<div class="login-card text-center">

    <div class="brand mb-2">
        <i class="bi bi-car-front-fill"></i> Allen Cars
    </div>

    <div class="admin-badge">
        <i class="bi bi-shield-lock-fill"></i> Admin Access Only
    </div>

    <h4 class="fw-bold mb-4">Admin Login</h4>

    <form action="login" method="post">

        <div class="mb-3 text-start">
            <label class="form-label">User ID</label>
            <div class="input-group">
                <span class="input-group-text bg-transparent border-0 text-warning">
                    <i class="bi bi-person-badge-fill"></i>
                </span>
                <input type="text" name="username" class="form-control" placeholder="Enter admin user id" required>
            </div>
        </div>

        <div class="mb-4 text-start">
            <label class="form-label">Password</label>
            <div class="input-group">
                <span class="input-group-text bg-transparent border-0 text-warning">
                    <i class="bi bi-lock-fill"></i>
                </span>
                <input type="password" name="password" class="form-control" placeholder="Enter password" required>
            </div>
        </div>

        <button type="submit" class="btn btn-login w-100 text-white">
            <i class="bi bi-box-arrow-in-right"></i> Login
        </button>
    </form>

</div>

<footer>
    © 2025 Allen Cars • Secure Admin Portal
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
