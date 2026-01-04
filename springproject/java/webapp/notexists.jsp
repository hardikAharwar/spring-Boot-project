<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Car Not Found</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
body{
    min-height:100vh;
    background: linear-gradient(135deg,#0b0d10,#1a1c22,#020617);
    display:flex;
    align-items:center;
    justify-content:center;
    font-family:'Segoe UI',sans-serif;
    color:#fff;
}

.status-card{
    background: rgba(255,255,255,0.08);
    backdrop-filter: blur(18px);
    border-radius:30px;
    padding:50px 45px;
    max-width:500px;
    width:100%;
    text-align:center;
    box-shadow:0 40px 80px rgba(0,0,0,0.8);
    border:1px solid rgba(255,255,255,0.12);
}

.icon{
    width:90px;
    height:90px;
    border-radius:50%;
    background: linear-gradient(135deg,#dc2626,#7f1d1d);
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:3rem;
    margin:0 auto 25px;
}

h3{
    font-weight:800;
    margin-bottom:12px;
}

p{
    color:rgba(255,255,255,0.7);
    margin-bottom:16px;
}

.highlight{
    color:#f87171;
    font-weight:700;
}

.btn{
    border-radius:999px;
    padding:12px 30px;
    font-weight:700;
    margin:8px;
}
</style>
</head>

<body>

<div class="status-card">
    <div class="icon">
        <i class="bi bi-x-circle-fill"></i>
    </div>

    <h3>Car Not Found</h3>

    <p>
        No car exists with ID <span class="highlight">${id}</span>
        in the system.
    </p>

    <p>Please verify the Car ID and try again.</p>

    <div class="mt-4">
        <a href="delete.html" class="btn btn-danger">
            <i class="bi bi-arrow-left-circle"></i> Try Again
        </a>
        <a href="AdminPanel.jsp" class="btn btn-outline-light">
            <i class="bi bi-house-fill"></i> Home
        </a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
