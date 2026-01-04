<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Car Added Successfully</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        min-height: 100vh;
        background:
            linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.75)),
            url("https://images.unsplash.com/photo-1511919884226-fd3cad34687c");
        background-size: cover;
        background-position: center;
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: 'Segoe UI', sans-serif;
    }

    .success-card {
        background: rgba(17, 24, 39, 0.85);
        backdrop-filter: blur(14px);
        border-radius: 22px;
        box-shadow: 0 25px 60px rgba(0,0,0,0.6);
        animation: fadeIn 0.8s ease-in-out;
        color: #e5e7eb;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(25px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .icon-success {
        font-size: 4.5rem;
        color: #22c55e;
    }

    h2 {
        font-weight: 700;
    }

    p {
        color: #cbd5e1;
    }

    .btn-custom {
        background: linear-gradient(135deg, #22c55e, #16a34a);
        border: none;
        font-weight: 600;
        color: #fff;
    }

    .btn-custom:hover {
        background: linear-gradient(135deg, #16a34a, #15803d);
    }

    .btn-outline-light:hover {
        background-color: #ffffff;
        color: #111827;
    }
</style>
</head>

<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-7 col-lg-6">

            <div class="card success-card p-5 text-center">

                <div class="mb-4">
                    <i class="bi bi-check-circle-fill icon-success"></i>
                </div>

                <h2 class="text-success mb-3">
                    Car Added Successfully!
                </h2>

                <p class="lead">
                    The new used car details have been saved securely in the system.
                </p>

                <hr class="border-secondary my-4">

                <div class="d-flex justify-content-center gap-3 flex-wrap mt-4">
                    <a href="/newcar" class="btn btn-custom px-4">
                        <i class="bi bi-plus-circle"></i> Add Another Car
                    </a>

                    <a href="AdminPanel.jsp" class="btn btn-outline-light px-4">
                        <i class="bi bi-house-door"></i> Home
                    </a>
                </div>

            </div>

        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
