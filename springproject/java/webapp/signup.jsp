<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Create Account | Allen Cars</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
/* BACKGROUND — SAME */
body {
    min-height: 100vh;
    background: linear-gradient(120deg, #111827, #374151, #f3f4f6);
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: 'Segoe UI', sans-serif;
}

/* WRAPPER */
.signup-wrapper {
    width: 100%;
    max-width: 1100px;
    padding: 12px; /* reduced */
}

/* CARD */
.signup-card {
    display: flex;
    flex-wrap: wrap;
    background: rgba(255,255,255,0.18);
    backdrop-filter: blur(18px);
    border-radius: 30px;
    overflow: hidden;
    box-shadow: 0 45px 90px rgba(0,0,0,0.6);
    border: 1px solid rgba(255,255,255,0.25);
}

/* LEFT VISUAL */
.signup-visual {
    flex: 1;
    background:
        linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
        url("https://images.unsplash.com/photo-1533473359331-0135ef1b58bf");
    background-size: cover;
    background-position: center;
    color: #fff;
    padding: 45px 40px; /* reduced */
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.signup-visual h2 {
    font-weight: 800;
}

.signup-visual p {
    opacity: 0.9;
    font-size: 1rem; /* reduced */
}

/* FORM SIDE */
.signup-form {
    flex: 1;
    background: linear-gradient(180deg, #f8fafc, #e5e7eb);
    padding: 35px 40px; /* reduced */
    border-left: 6px solid #374151;
}

.signup-form h3 {
    font-weight: 800;
    color: #111827;
    margin-bottom: 6px; /* reduced */
}

.sub-title {
    color: #4b5563;
    font-size: 0.85rem; /* reduced */
    margin-bottom: 8px; /* reduced */
}

/* LABELS */
label {
    font-weight: 600;
    color: #1f2937;
    font-size: 12px;      /* reduced */
    margin-bottom: 2px;  /* reduced */
}

.required {
    color: red;
    font-weight: 800;
}

/* INPUTS */
.form-control {
    border-radius: 14px;
    padding: 6px 8px;     /* reduced */
    border: 1px solid #9ca3af;
    height: 32px;        /* reduced */
    font-size: 12px;     /* reduced */
    margin-bottom: 6px;  /* reduced */
}

/* PASSWORD EYE */
.password-wrapper {
    position: relative;
}

.password-input {
    padding-right: 30px;
}

.toggle-eye {
    position: absolute;
    top: 50%;
    right: 12px;
    transform: translateY(-50%);
    cursor: pointer;
    color: #374151;
    font-size: 1rem; /* reduced */
}

.toggle-eye:hover {
    color: #111827;
}

/* BUTTON */
.btn-signup {
    background: linear-gradient(135deg, #111827, #374151);
    border: none;
    border-radius: 999px;
    font-weight: 600;
    color: #fff;
    padding: 8px;        /* reduced */
    font-size: 13px;    /* reduced */
    box-shadow: 0 12px 30px rgba(0,0,0,0.45);
}

.btn-signup:hover {
    opacity: 0.95;
}

/* ERROR */
.error-msg {
    color: #dc2626;
    font-weight: 600;
    margin-top: 4px; /* reduced */
    display: none;
}

/* LOGIN LINK */
.login-link {
    text-align: center;
    margin-top: 8px;   /* reduced */
    font-size: 0.85rem; /* reduced */
}

.login-link a {
    font-weight: 600;
    color: #111827;
    text-decoration: none;
}

/* MOBILE */
@media(max-width: 768px) {
    .signup-card {
        flex-direction: column;
    }
    .signup-visual {
        min-height: 200px; /* reduced */
    }
}

/* ===== Compact Field Spacing (kept, reduced) ===== */
.form-group {
    margin-bottom: 6px; /* reduced */
}
</style>
</head>

<body>

<div class="signup-wrapper">
    <div class="signup-card">

        <!-- LEFT -->
        <div class="signup-visual">
            <h1>Join Allen Cars</h1>
            <p>
                Explore trusted used cars with confidence,
                transparency, and ease.
            </p>
        </div>

        <!-- RIGHT -->
        <div class="signup-form">
            <h3><i class="bi bi-person-plus-fill"></i> Create Account</h3>
            <div class="sub-title">Join with us by creating your account</div>

            <form action="newRegister" method="post" autocomplete="off" onsubmit="return validateAge()">

                <div class="row g-3">

    <div class="col-12">
        <label>User Id <span class="required">*</span></label>
        <input type="text" name="userId" class="form-control" required>
    </div>

    <div class="col-12">
        <label>First Name <span class="required">*</span></label>
        <input type="text" name="firstName" class="form-control" required>
    </div>

    <div class="col-12">
        <label>Last Name <span class="required">*</span></label>
        <input type="text" name="lastName" class="form-control" required>
    </div>

    <div class="col-12">
        <label>Email <span class="required">*</span></label>
        <input type="email" name="email" class="form-control" required>
    </div>

    <div class="col-12">
        <label>Date of Birth <span class="required">*</span></label>
        <input type="date" id="dob" name="dateOfBirth" class="form-control" required>
        <div class="error-msg" id="ageError">
            User must be 18 years or older
        </div>
    </div>

    <div class="col-12">
        <label>Phone Number <span class="required">*</span></label>
        <input type="text" name="phoneNo" class="form-control" required>
    </div>

    <div class="col-12">
        <label>City <span class="required">*</span></label>
        <input type="text" name="city" class="form-control" required>
    </div>

    <div class="col-12">
        <label>State <span class="required">*</span></label>
        <input type="text" name="state" class="form-control" required>
    </div>

    <div class="col-12">
        <label>Password <span class="required">*</span></label>
        <div class="password-wrapper">
            <input type="password"
                   name="password"
                   id="password"
                   class="form-control password-input"
                   required>

            <i class="bi bi-eye-fill toggle-eye"
               id="eyeIcon"
               onclick="togglePassword()"></i>
        </div>
    </div>

</div>


                <button class="btn btn-signup w-100 mt-4">
                    <i class="bi bi-check-circle-fill"></i> Sign Up
                </button>

                <div class="login-link">
                    Already have an account?
                    <a href="index.jsp">Login here</a>
                </div>

            </form>
        </div>

    </div>
</div>

<script>
function validateAge() {
    const dob = document.getElementById("dob").value;
    const error = document.getElementById("ageError");

    const birthDate = new Date(dob);
    const today = new Date();

    let age = today.getFullYear() - birthDate.getFullYear();
    const m = today.getMonth() - birthDate.getMonth();

    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }

    if (age < 18) {
        error.style.display = "block";
        return false;
    } else {
        error.style.display = "none";
        return true;
    }
}

function togglePassword() {
    const pwd = document.getElementById("password");
    const eye = document.getElementById("eyeIcon");

    if (pwd.type === "password") {
        pwd.type = "text";
        eye.classList.replace("bi-eye-fill", "bi-eye-slash-fill");
    } else {
        pwd.type = "password";
        eye.classList.replace("bi-eye-slash-fill", "bi-eye-fill");
    }
}
</script>

</body>
</html>
