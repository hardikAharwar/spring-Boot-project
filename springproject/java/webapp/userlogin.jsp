<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>User Login | Allen Cars</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
body {
    min-height: 100vh;
    background:background: linear-gradient(120deg, #111827, #374151, #f3f4f6);
;
;
;
    font-family: 'Segoe UI', sans-serif;
    display: flex;
    align-items: center;
}

/* Layout */
.main-wrapper {
    width: 100%;
    padding: 40px;
}

.login-container {
    max-width: 1200px;
    margin: auto;
    background: rgba(255,255,255,0.15);
    backdrop-filter: blur(18px);
    border-radius: 30px;
    box-shadow: 0 40px 90px rgba(0,0,0,0.6);
    overflow: hidden;
}

/* LEFT LOGIN */
.login-box {
    background: linear-gradient(180deg, #f8fafc, #eef2f7);
    padding: 60px 50px;
}

.login-box h3 {
    font-weight: 800;
    color: #1e293b;
}

.sub-text {
    color: #475569;
    margin-bottom: 25px;
}

/* RIGHT CONTENT */
.side-content {
    background:
        linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
        url("https://images.unsplash.com/photo-1503376780353-7e6692767b70");
    background-size: cover;
    background-position: center;
    color: #fff;
    padding: 60px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.side-content h2 {
    font-weight: 800;
    margin-bottom: 15px;
}

.side-content p {
    font-size: 1.1rem;
    opacity: 0.9;
}

/* Inputs */
label {
    font-weight: 600;
    color: #334155;
}

.form-control {
    border-radius: 14px;
    padding: 12px;
    border: 1px solid #cbd5e1;
}

/* Password Eye */
.password-wrapper {
    position: relative;
}

.password-input {
    padding-right: 45px;
}

.toggle-eye {
    position: absolute;
    top: 50%;
    right: 15px;
    transform: translateY(-50%);
    cursor: pointer;
    color: #64748b;
    font-size: 1.2rem;
    z-index: 5; /* ✅ THIS FIX MAKES IT VISIBLE */
}

.toggle-eye:hover {
    color: #2563eb;
}

/* Button */
.btn-login {
    background: linear-gradient(135deg, #2563eb, #38bdf8);
    border: none;
    border-radius: 999px;
    font-weight: 600;
    color: #fff;
    padding: 13px;
    box-shadow: 0 10px 25px rgba(37,99,235,0.4);
}

.btn-login:hover {
    opacity: 0.95;
}

/* Error Message */
.error-msg {
    color: #dc2626;
    font-weight: 600;
    margin-top: 15px;
}

/* Links */
.extra-links {
    margin-top: 18px;
    text-align: center;
}

.extra-links a {
    text-decoration: none;
    font-weight: 600;
    color: #2563eb;
}

@media(max-width: 768px) {
    .side-content {
        display: none;
    }
}
</style>
</head>

<body>

<div class="main-wrapper">
    <div class="login-container row g-0">

        <!-- LEFT: LOGIN FORM -->
        <div class="col-md-5 login-box">
            <h3>
                <i class="bi bi-person-circle"></i> User Login
            </h3>
            <div class="sub-text">
                Login to explore verified used cars
            </div>

            <form action="userLogin" method="post">

                <div class="mb-3">
                    <label>User ID</label>
                    <input type="text" name="userId" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label>Password</label>

                    <div class="password-wrapper">
                        <input type="password"
                               name="password"
                               id="password"
                               class="form-control password-input"
                               required>

                        <i class="bi bi-eye-fill toggle-eye"
                           id="eyeIcon"
                           onclick="togglePassword()"></i>
                    </div>
                </div>

                <!-- Error from Controller -->
                <%
                    String error = (String) request.getAttribute("error");
                    if (error != null) {
                %>
                    <div class="error-msg">
                        <i class="bi bi-exclamation-triangle-fill"></i>
                        <%= error %>
                    </div>
                <%
                    }
                %>

                <button class="btn btn-login w-100 mt-4">
                    <i class="bi bi-box-arrow-in-right"></i> Login
                </button>

                <div class="extra-links">
                    New user?
                    <a href="signup.jsp">Create an account</a>
                </div>
            </form>
        </div>

        <!-- RIGHT: CONTENT -->
        <div class="col-md-7 side-content">
            <h2>Welcome Back!</h2>
            <p>
                Discover trusted pre-owned vehicles, transparent pricing,
                and a smooth buying experience with Allen Cars.
            </p>

            <ul class="list-unstyled fs-5 mt-3">
                <li>✔ Verified Used Cars</li>
                <li>✔ Secure Transactions</li>
                <li>✔ Easy Booking & Support</li>
            </ul>
        </div>

    </div>
</div>

<script>
function togglePassword() {
    const pwd = document.getElementById("password");
    const eye = document.getElementById("eyeIcon");

    if (pwd.type === "password") {
        pwd.type = "text";
        eye.classList.replace("bi-eye-fill", "bi-eye-slash-fill");
    } else {
        pwd.type = "password";
        eye.classList.replace("bi-eye-slash-fill", "bi-eye-fill");
    }
}
</script>

</body>
</html>
