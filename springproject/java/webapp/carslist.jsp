<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Used Cars Inventory</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
        min-height: 100vh;
        font-family: 'Segoe UI', sans-serif;
    }

    .glass-card {
        background: #111827;
        border-radius: 18px;
        box-shadow: 0 20px 45px rgba(0,0,0,0.6);
    }

    h2 {
        color: #e5e7eb;
        font-weight: 700;
    }

    p {
        color: #9ca3af;
    }

    /* 🔍 SEARCH BAR */
    .search-wrapper {
        max-width: 420px;
        margin: 0 auto 25px auto;
        position: relative;
    }

    .search-wrapper input {
        background: #1f2937;
        color: #f9fafb;
        border: 1px solid #374151;
        border-radius: 12px;
        padding: 10px 14px 10px 42px;
    }

    .search-wrapper input::placeholder {
        color: #9ca3af;
    }

    .search-wrapper i {
        position: absolute;
        top: 50%;
        left: 14px;
        transform: translateY(-50%);
        color: #9ca3af;
        pointer-events: none;
    }

    /* 📊 TABLE */
    .table {
        background: #111827;
        color: #e5e7eb;
    }

    .table thead th {
        background: #020617;
        color: #f9fafb;
        text-align: center;
        border-color: #374151;
    }

    .table tbody td {
        text-align: center;
        vertical-align: middle;
        border-color: #374151;
    }

    .table tbody tr:hover {
        background-color: #1f2937;
        transition: 0.25s;
    }
</style>

</head>

<body>

<div class="container py-5">

    <div class="glass-card p-4">

        <div class="text-center mb-4">
            <h2><i class="bi bi-car-front-fill"></i> Used Cars Inventory</h2>
            <p class="text-light">Search and manage all available cars</p>
        </div>

       <!-- 🔍 SEARCH BAR -->
<div class="search-wrapper">
    <i class="bi bi-search"></i>
    <input type="text" id="searchInput" class="form-control"
           placeholder="Search by ID, Brand, Model, Fuel, Owner">
</div>


        <div class="table-responsive">
            <table class="table table-bordered table-hover" id="carTable">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Brand</th>
                        <th>Model</th>
                        <th>Year</th>
                        <th>KMs</th>
                        <th>Fuel</th>
                        <th>Color</th>
                        <th>Price</th>
                        <th>Owner</th>
                        <th>Mobile</th>
                        <th>Status</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="car" items="${allcar}">
                        <tr>
                            <td>${car.carId}</td>
                            <td>${car.brand}</td>
                            <td>${car.model}</td>
                            <td>${car.mfgYear}</td>
                            <td>${car.kilometers}</td>
                            <td>${car.fuelType}</td>
                            <td>${car.color}</td>
                            <td>₹ ${car.price}</td>
                            <td>${car.ownerName}</td>
                            <td>${car.mobile}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${car.status eq 'AVAILABLE'}">
                                        <span class="badge bg-success">AVAILABLE</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-danger">${car.status}</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </div>

</div>

<!-- 🔥 SEARCH SCRIPT -->
<script>
    document.getElementById("searchInput").addEventListener("keyup", function () {
        let value = this.value.toLowerCase();
        let rows = document.querySelectorAll("#carTable tbody tr");

        rows.forEach(row => {
            row.style.display = row.textContent.toLowerCase().includes(value)
                ? ""
                : "none";
        });
    });
</script>

</body>
</html>
