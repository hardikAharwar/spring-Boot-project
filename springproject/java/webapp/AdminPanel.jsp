<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Dashboard | Used Cars</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
/* ===================== BACKGROUND ===================== */
body{
    min-height:100vh;
    background:
        radial-gradient(circle at top left, rgba(34,197,94,0.15), transparent 40%),
        radial-gradient(circle at bottom right, rgba(22,163,74,0.12), transparent 45%),
        linear-gradient(160deg, #0f1115, #15181d, #1b1f24);
    font-family: 'Segoe UI', sans-serif;
    color:#e5e7eb;
}

/* ===================== NAVBAR ===================== */
.navbar{
    background: rgba(10,12,14,0.9);
    backdrop-filter: blur(12px);
    border-bottom: 1px solid rgba(255,255,255,0.08);
    box-shadow: 0 10px 30px rgba(0,0,0,0.6);
}

/* ===================== DASHBOARD WRAPPER ===================== */
.dashboard-wrapper{
    margin-top:60px;
    background:
        linear-gradient(
            145deg,
            rgba(24,28,32,0.95),
            rgba(18,22,26,0.95)
        );
    border-radius: 36px;
    padding: 70px 60px;
    box-shadow:
        0 60px 120px rgba(0,0,0,0.85),
        inset 0 0 0 1px rgba(255,255,255,0.06);
}

/* ===================== HEADER ===================== */
.dashboard-title{
    font-size:2.8rem;
    font-weight:900;
    letter-spacing:3px;
    background: linear-gradient(90deg,#22c55e,#16a34a,#15803d);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.dashboard-sub{
    color: rgba(255,255,255,0.6);
    margin-bottom:70px;
}

/* ===================== CARD ===================== */
.admin-card{
    position:relative;
    height:100%;
    padding:45px 30px;
    border-radius:28px;
    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,0.14),
            rgba(255,255,255,0.04)
        );
    backdrop-filter: blur(18px);
    border:1px solid rgba(255,255,255,0.12);
    box-shadow:
        0 30px 60px rgba(0,0,0,0.6),
        inset 0 0 18px rgba(255,255,255,0.05);
    transition: all 0.5s cubic-bezier(.16,1,.3,1);
}

.admin-card:hover{
    transform: translateY(-14px) scale(1.06);
    box-shadow: 0 50px 100px rgba(0,0,0,0.85);
}

/* ===================== ICON ===================== */
.icon-box{
    width:88px;
    height:88px;
    border-radius:22px;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:2.6rem;
    margin:0 auto 25px;
    background:
        linear-gradient(135deg,#0b0d10,#161a1f);
    box-shadow:
        0 18px 40px rgba(0,0,0,0.8),
        inset 0 0 12px rgba(255,255,255,0.1);
}

/* Icon colors */
.add i{color:#22c55e;}
.edit i{color:#3b82f6;}
.delete i{color:#ef4444;}
.list i{color:#06b6d4;}
.enquiry i{color:#facc15;}

/* ===================== TEXT ===================== */
.admin-card h5{
    font-weight:800;
    letter-spacing:1px;
    margin-bottom:8px;
}

.admin-card p{
    font-size:0.95rem;
    color: rgba(255,255,255,0.65);
    margin-bottom:28px;
}

/* ===================== BUTTON ===================== */
.admin-card .btn{
    border-radius:999px;
    padding:12px 36px;
    font-weight:700;
    letter-spacing:1px;
}

/* ===================== FOOTER ===================== */
footer{
    margin-top:90px;
    padding:28px 0;
    background: rgba(10,12,14,0.9);
    border-top:1px solid rgba(255,255,255,0.08);
    text-align:center;
    color: rgba(255,255,255,0.6);
}
</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark">
    <div class="container">
        <span class="navbar-brand fw-bold">
            <i class="bi bi-speedometer2 text-success"></i> Admin Panel
        </span>
        <span class="navbar-text text-light">
            Used Cars Management System
        </span>
    </div>
</nav>

<div class="container">
    <div class="dashboard-wrapper text-center">

        <h1 class="dashboard-title">ADMIN DASHBOARD</h1>
        <p class="dashboard-sub">Control & manage Allen Used Cars platform</p>

        <div class="row g-5 justify-content-center">

            <!-- Add Car -->
            <div class="col-md-4">
                <div class="admin-card">
                    <div class="icon-box add"><i class="bi bi-car-front-fill"></i></div>
                    <h5>Add Car</h5>
                    <p>Add new used car details</p>
                    <a href="newcar" class="btn btn-success">Open</a>
                </div>
            </div>

            <!-- Modify Car -->
            <div class="col-md-4">
                <div class="admin-card">
                    <div class="icon-box edit"><i class="bi bi-pencil-square"></i></div>
                    <h5>Modify Car Info</h5>
                    <p>Edit existing car details</p>
                    <a href="modify" class="btn btn-primary">Open</a>
                </div>
            </div>

            <!-- Delete Car -->
            <div class="col-md-4">
                <div class="admin-card">
                    <div class="icon-box delete"><i class="bi bi-trash-fill"></i></div>
                    <h5>Delete Car</h5>
                    <p>Remove car from inventory</p>
                    <a href="deletecar" class="btn btn-danger">Open</a>
                </div>
            </div>

            <!-- Car List -->
            <div class="col-md-4">
                <div class="admin-card">
                    <div class="icon-box list"><i class="bi bi-card-list"></i></div>
                    <h5>Car List</h5>
                    <p>View all used cars</p>
                    <a href="carlist" class="btn btn-info">Open</a>
                </div>
            </div>

            <!-- Enquiry List -->
            <div class="col-md-4">
                <div class="admin-card">
                    <div class="icon-box enquiry"><i class="bi bi-journal-text"></i></div>
                    <h5>Enquiry List</h5>
                    <p>View customer enquiries</p>
                    <a href="/admin/enquiries" class="btn btn-warning">Open</a>
                </div>
            </div>

        </div>
    </div>
</div>

<footer>
    <h6><i class="bi bi-building text-success"></i> Allen Used Cars</h6>
    <small>Admin Console | Powered by Spring Boot & Bootstrap</small>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
