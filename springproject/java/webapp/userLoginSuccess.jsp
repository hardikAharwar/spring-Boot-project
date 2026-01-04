<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Account Created | Allen Cars</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        min-height: 100vh;
        background:
            linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
            url("https://images.unsplash.com/photo-1503376780353-7e6692767b70");
        background-size: cover;
        background-position: center;
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: 'Segoe UI', sans-serif;
    }

    .success-card {
        background: rgba(255,255,255,0.95);
        border-radius: 28px;
        padding: 55px 45px;
        max-width: 600px;
        width: 100%;
        text-align: center;
        box-shadow: 0 35px 80px rgba(0,0,0,0.6);
        animation: fadeInUp 0.8s ease-in-out;
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .icon-box {
        width: 90px;
        height: 90px;
        border-radius: 50%;
        background: linear-gradient(135deg, #22c55e, #16a34a);
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 25px;
        color: #fff;
        font-size: 2.8rem;
        box-shadow: 0 15px 35px rgba(34,197,94,0.5);
    }

    h2 {
        font-weight: 800;
        color: #14532d;
    }

    .sub-text {
        color: #334155;
        font-size: 1.05rem;
        margin-top: 10px;
    }

    .user-id-box {
        margin: 25px 0;
        padding: 15px;
        border-radius: 16px;
        background: linear-gradient(135deg, #2563eb, #38bdf8);
        color: #fff;
        font-size: 1.3rem;
        font-weight: 700;
        letter-spacing: 1px;
        box-shadow: 0 10px 30px rgba(37,99,235,0.4);
    }

    .info-text {
        font-size: 0.95rem;
        color: #475569;
        margin-bottom: 30px;
    }

    .btn-login {
        background: linear-gradient(135deg, #2563eb, #38bdf8);
        border: none;
        border-radius: 999px;
        padding: 13px 35px;
        font-weight: 600;
        color: #fff;
        box-shadow: 0 12px 28px rgba(37,99,235,0.5);
    }

    .btn-login:hover {
        opacity: 0.95;
    }
</style>
</head>

<body>

<div class="success-card">

    <div class="icon-box">
        <i class="bi bi-check-circle-fill"></i>
    </div>

    <h2>Account Created Successfully!</h2>

    <p class="sub-text">
        Welcome to <strong>Allen Cars</strong> 🎉  
        Your account has been created successfully.
    </p>

    <!-- USER ID DISPLAY -->
    <div class="user-id-box">
        Your User ID: <br>
        <span>${id}</span>
    </div>

    <p class="info-text">
        Please save this <strong>User ID</strong>.  
        You will need it every time you log in.
    </p>

    <a href="userlogin.jsp" class="btn btn-login">
        <i class="bi bi-box-arrow-in-right"></i> Login Here
    </a>

</div>

</body>
</html>
