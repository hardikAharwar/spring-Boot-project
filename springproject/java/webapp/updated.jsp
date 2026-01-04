<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Car Updated Successfully</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        min-height: 100vh;
        background:
            linear-gradient(rgba(15,23,42,0.75), rgba(15,23,42,0.75)),
            url("https://images.unsplash.com/photo-1503376780353-7e6692767b70");
        background-size: cover;
        background-position: center;
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: 'Segoe UI', sans-serif;
    }

    .success-card {
        background: rgba(248,250,252,0.95);
        border-radius: 26px;
        padding: 55px 45px;
        max-width: 520px;
        width: 100%;
        text-align: center;
        box-shadow: 0 40px 90px rgba(0,0,0,0.6);
        animation: fadeIn 0.8s ease;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(30px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .icon-box {
        width: 90px;
        height: 90px;
        border-radius: 50%;
        background: linear-gradient(135deg, #22c55e, #16a34a);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 3rem;
        color: #fff;
        margin: 0 auto 25px;
        box-shadow: 0 20px 40px rgba(0,0,0,0.3);
    }

    h2 {
        font-weight: 800;
        color: #14532d;
    }

    p {
        color: #334155;
        font-size: 1.1rem;
    }

    .btn-home {
        background: linear-gradient(135deg, #2563eb, #38bdf8);
        border: none;
        font-weight: 600;
        color: #fff;
        border-radius: 999px;
    }

    .btn-modify {
        background: linear-gradient(135deg, #6366f1, #8b5cf6);
        border: none;
        font-weight: 600;
        color: #fff;
        border-radius: 999px;
    }

    .btn-home:hover,
    .btn-modify:hover {
        opacity: 0.9;
    }
</style>
</head>

<body>

<div class="success-card">

    <div class="icon-box">
        <i class="bi bi-check-circle-fill"></i>
    </div>

    <h2>Car Updated Successfully!</h2>

    <p class="mt-3">
        The car details have been updated and saved safely in the system.
    </p>

    <hr class="my-4">

    <div class="d-flex justify-content-center gap-3 flex-wrap mt-3">
        <a href="AdminPanel.jsp" class="btn btn-home px-4 py-2">
            <i class="bi bi-house-door-fill"></i> Home
        </a>

        <a href="modify.jsp" class="btn btn-modify px-4 py-2">
            <i class="bi bi-pencil-square"></i> Modify More
        </a>
    </div>

</div>

</body>
</html>
