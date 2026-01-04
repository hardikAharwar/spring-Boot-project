<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Car</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        min-height: 100vh;
        background: linear-gradient(135deg, #334155, #475569);
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: 'Segoe UI', sans-serif;
    }

    .search-card {
        background: #f8fafc;
        border-radius: 22px;
        padding: 45px 35px;
        width: 100%;
        max-width: 420px;
        box-shadow: 0 25px 60px rgba(0,0,0,0.35);
        text-align: center;
    }

    .icon-box {
        width: 80px;
        height: 80px;
        border-radius: 50%;
        background: linear-gradient(135deg, #2563eb, #38bdf8);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 2.4rem;
        color: #fff;
        margin: 0 auto 25px;
    }

    h3 {
        font-weight: 800;
        color: #1e293b;
    }

    p {
        color: #475569;
    }

    .form-control {
        border-radius: 14px;
        padding: 12px;
        text-align: center;
        font-weight: 600;
    }

    .btn-search {
        background: linear-gradient(135deg, #2563eb, #38bdf8);
        border: none;
        font-weight: 700;
        border-radius: 999px;
        padding: 12px;
    }
</style>
</head>

<body>

<div class="search-card">

    <div class="icon-box">
        <i class="bi bi-search"></i>
    </div>

    <h3>Search Car</h3>
    <p>Enter Car ID to modify details</p>

    <form action="enterid" method="get">
        <input type="number" name="carid"
               class="form-control mb-4"
               placeholder="Enter Car ID" required>

        <button class="btn btn-search w-100 text-white">
            <i class="bi bi-arrow-right-circle"></i> Continue
        </button>
    </form>

</div>

</body>
</html>
