<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify Car</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        min-height: 100vh;
        background: linear-gradient(135deg, #334155, #475569);
        font-family: 'Segoe UI', sans-serif;
    }
    .card {
        border-radius: 18px;
        box-shadow: 0 25px 60px rgba(0,0,0,0.35);
    }
    label {
        font-weight: 600;
        color: #1e293b;
    }
</style>
</head>

<body>

<div class="container py-5">

<div class="card p-4 mx-auto" style="max-width: 900px;">

<h3 class="text-center mb-4">
    <i class="bi bi-pencil-square"></i> Modify Car Details
</h3>

<!-- 🔍 SEARCH -->


<!-- 🔽 CAR ID DROPDOWN -->
<c:if test="${not empty carlist}">
<form action="loadcar" method="get" class="mb-4">
    <label>Select Car ID</label>
    <div class="input-group">
        <select name="carId" class="form-select" required>
            <c:forEach var="c" items="${carlist}">
                <option value="${c.carId}">
                    ${c.brand} ${c.model} - ID ${c.carId}
                </option>
            </c:forEach>
        </select>
        <button class="btn btn-primary">
            Load Details
        </button>
    </div>
</form>
</c:if>

<!-- ✏️ MODIFY FORM -->
<c:if test="${not empty car}">
<form action="updatecar" method="post">

<input type="hidden" name="carId" value="${car.carId}">

<div class="row g-3">

<div class="col-md-6">
<label>Brand</label>
<input type="text" name="brand" value="${car.brand}" class="form-control">
</div>

<div class="col-md-6">
<label>Model</label>
<input type="text" name="model" value="${car.model}" class="form-control">
</div>

<div class="col-md-4">
<label>Year</label>
<input type="number" name="mfgYear" value="${car.mfgYear}" class="form-control">
</div>

<div class="col-md-4">
<label>Kilometers</label>
<input type="number" name="kilometers" value="${car.kilometers}" class="form-control">
</div>

<div class="col-md-4">
<label>Fuel Type</label>
<input type="text" name="fuelType" value="${car.fuelType}" class="form-control">
</div>

<div class="col-md-4">
<label>Color</label>
<input type="text" name="color" value="${car.color}" class="form-control">
</div>

<div class="col-md-4">
<label>Price</label>
<input type="number" name="price" value="${car.price}" class="form-control">
</div>

<div class="col-md-4">
<label>Owner's Name</label>
<input type="text" name="ownerName" value="${car.ownerName}" class="form-control">
</div>

<div class="col-md-4">
    <label>Mobile Number</label>
    <input type="text"
           name="mobile"
           value="${car.mobile}"
           class="form-control"
           required
           pattern="[0-9]{10}"
           placeholder="10-digit mobile number">
</div>

<div class="col-md-4">
<label>Status</label>
<select name="status" class="form-select">
    <option ${car.status=='AVAILABLE'?'selected':''}>AVAILABLE</option>
    <option ${car.status=='SOLD'?'selected':''}>SOLD</option>
</select>
</div>

</div>

<div class="text-center mt-4">
<button class="btn btn-success px-5">
    <i class="bi bi-check-circle"></i> Update Car
</button>
</div>

</form>
</c:if>

</div>
</div>

</body>
</html>
