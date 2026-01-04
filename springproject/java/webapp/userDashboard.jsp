<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard | Allen Cars</title>

<!-- ================= BOOTSTRAP ================= -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- ================= FONT AWESOME ================= -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

<style>
/* ================= GLOBAL THEME ================= */
/* Black + Dark Red + Gold luxury gradient */
body {
    min-height: 100vh;
    background: linear-gradient(135deg, #000000, #2b0000, #8b0000, #b8860b);
    font-family: 'Segoe UI', sans-serif;
    color: #f2f2f2;
}

/* ================= NAVBAR ================= */
/* Transparent navbar, no borders */
.navbar {
    background: rgba(0, 0, 0, 0.5);
    backdrop-filter: blur(8px);
}

/* ================= LEFT NAV BUTTONS ================= */
/* These are NOT boxes, just elegant clickable blocks */
.nav-action {
    font-size: 22px;
    letter-spacing: 1px;
    color: #f5f5f5;
    padding: 14px 0;
    cursor: pointer;
    transition: all 0.3s ease;
}

.nav-action i {
    color: #d4af37; /* gold */
    margin-right: 12px;
}

/* Hover effect only changes glow, no borders */
.nav-action:hover {
    color: #d4af37;
    transform: translateX(6px);
}

/* ================= RIGHT SIDE TEXT ================= */
.company-text h2 {
    font-weight: 600;
    color: #d4af37;
}

.company-text p {
    color: rgba(255,255,255,0.7);
    line-height: 1.8;
    font-size: 15px;
}

/* ================= PROFILE DROPDOWN ================= */
.dropdown-menu {
    background: rgba(0,0,0,0.85);
    border: none;
}
.dropdown-item {
    color: #f5f5f5;
}
.dropdown-item:hover {
    background: rgba(212,175,55,0.15);
    color: #d4af37;
}
</style>
</head>

<body>

<!-- ================= TOP NAVBAR ================= -->
<nav class="navbar navbar-expand-lg px-4">

    <!-- Company Name / Logo -->
    <span class="navbar-brand text-warning fw-semibold">
        Allen Cars
    </span>

    <!-- Right Corner Profile & Logout -->
    <div class="ms-auto dropdown">
        <a class="text-warning dropdown-toggle" href="#" data-bs-toggle="dropdown">
            <i class="fa-solid fa-user-circle fa-2x"></i>
        </a>

        <ul class="dropdown-menu dropdown-menu-end">
            <li>
                <a class="dropdown-item" href="#">Profile</a>
            </li>
            <li>
                <a class="dropdown-item text-danger" href="#">Logout</a>
            </li>
        </ul>
    </div>

</nav>
<!-- ================= NAVBAR END ================= -->


<!-- ================= MAIN CONTENT ================= -->
<div class="container mt-5">

    <div class="row">

        <!-- ================= LEFT COLUMN ================= -->
        <!-- Navigation blocks (buttons) -->
        <div class="col-md-4">

            <!-- Cars List -->
            <div class="nav-action">
                <i class="fa-solid fa-car"></i>
                Car List
            </div>

            <!-- Enquiries -->
            <div class="nav-action">
                <i class="fa-solid fa-envelope"></i>
                Enquiries
            </div>

            <!-- Wishlist -->
            <div class="nav-action">
                <i class="fa-solid fa-heart"></i>
                Wishlist
            </div>

        </div>

        <!-- ================= RIGHT COLUMN ================= -->
        <!-- Company description / branding -->
        <div class="col-md-8 company-text">

            <h2>Driven by Trust. Powered by Passion.</h2>

            <p>
                Allen Cars is built to redefine the way customers explore, evaluate,
                and engage with premium automobiles. Our platform focuses on transparency,
                reliability, and an experience that reflects the standards of modern
                automotive excellence.
            </p>

            <p>
                From browsing curated vehicles to managing enquiries and tracking interests,
                every interaction is designed to be seamless, secure, and refined.
            </p>

        </div>

    </div>
</div>
<!-- ================= MAIN CONTENT END ================= -->


<!-- ================= BOOTSTRAP JS ================= -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
