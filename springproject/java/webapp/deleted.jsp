<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Car Deleted</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
body{
    min-height:100vh;
    background: linear-gradient(135deg,#0f1115,#1b1f24,#0f172a);
    display:flex;
    align-items:center;
    justify-content:center;
    font-family:'Segoe UI',sans-serif;
    color:#fff;
}

.status-card{
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(18px);
    border-radius:30px;
    padding:50px 45px;
    max-width:500px;
    width:100%;
    text-align:center;
    box-shadow:0 40px 80px rgba(0,0,0,0.8);
    border:1px solid rgba(255,255,255,0.15);
}

.icon{
    width:90px;
    height:90px;
    border-radius:50%;
    background: linear-gradient(135deg,#16a34a,#22c55e);
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
    color:#22c55e;
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
        <i class="bi bi-check-circle-fill"></i>
    </div>

    <h3>Car Deleted Successfully</h3>

    <p>
        The car with ID <span class="highlight">${id}</span> has been
        successfully deleted from the system.
    </p>

    <p>This action is permanent and cannot be undone.</p>

    <div class="mt-4">
        <a href="/carlist" class="btn btn-success">
            <i class="bi bi-card-list"></i> Car List
        </a>
        <a href="AdminPanel.jsp" class="btn btn-outline-light">
            <i class="bi bi-house-fill"></i> Home
        </a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
