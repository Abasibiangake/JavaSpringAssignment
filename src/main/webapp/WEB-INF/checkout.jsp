<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
    crossorigin="anonymous"></script>

<link 
  href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" 
  rel="stylesheet"  type='text/css'>    
    
<style>
.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}

.divider:after,
.divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}
.card-registration .select-arrow {
top: 13px;
}

navbar{
 background-color: #0069a9;
}
</style>
</head>
<body>
<form action = "payment" method="post">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <!-- Container wrapper -->
  <div class="container">
    <!-- Navbar brand -->
    <a class="navbar-brand me-2" href="#">
      <img
        src="https://res.cloudinary.com/elite-product/image/upload/v1666384219/people/Black_Minimalist_Modern_Letter_N_Logo_tvn5fo.png"
        height="36"
        alt="MDB Logo"
        loading="lazy"
        style="margin-top: -1px;"
      />
    </a>

    <!-- Toggle button -->
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarButtonsExample"
      aria-controls="navbarButtonsExample"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarButtonsExample">
      <!-- Left links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="#">Dashboard</a>
        </li>
      </ul>
      <!-- Left links -->

      <div class="d-flex align-items-center">
        <a type="submit" href ="/" class="btn btn-link px-3 me-2">
          Login
        </a>
        <a type="submit" href ="/sport" class="btn btn-primary me-3">
          Add Sport
        </a>
        <a
          type="submit" href ="/profile">
          <i class="fa fa-user" aria-hidden="true"></i>
        </a>
      </div>
    </div>
    <!-- Collapsible wrapper -->
  </div>
  <!-- Container wrapper -->
</nav>
<!-- Navbar -->
<section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h2 class="text-center fw-bold mx-3 mb-0">CHECKOUT PAGE</h2>
					<br></br>
					<div class="divider d-flex align-items-center my-4">
		            	<h4 >CARD DETAILS</h4>
		          </div>
				<div class="row">
                  <div class="col-md-6 mb-4">
	                <div class="form-outline mb-4">
	                  <label class="form-label" for="cardName">Card Owner Name</label>
	                  <input type="text" id="cardName" class="form-control form-control-lg" required/>
	                  
	                </div>
	               </div>
                  
                  <div class="col-md-6 mb-4">
	                <div class="form-outline mb-4">
             	      <label class="form-label" for="cvv">CVV</label>
	                  <input type="number" id="cvv" class="form-control form-control-lg" required />
	                </div>
	              </div>
				</div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="cardNumber">Card Number</label>
                  <input type="number" id="cardNumber" class="form-control form-control-lg" required/>
                </div>

				
                
                <label for="expirymonth">Expiry Date</label>					
					<select name="expiryMonth" id="expiryMonth" required>
					  <option selected value='1'>January</option>
					    <option value='2'>February</option>
					    <option value='3'>March</option>
					    <option value='4'>April</option>
					    <option value='5'>May</option>
					    <option value='6'>June</option>
					    <option value='7'>July</option>
					    <option value='8'>August</option>
					    <option value='9'>September</option>
					    <option value='10'>October</option>
					    <option value='11'>November</option>
					    <option value='12'>December</option>
					</select>
					           
					<select name="expiryYear" id="expiryYear">
					    <option selected value='2022'>2022</option>
					    <option value='2023'>2023</option>
					    <option value='2024'>2024</option>
					    <option value='2025'>2025</option>
					    <option value='2026'>2026</option>
					
					</select>
					
					<br></br>
					<div class="d-flex center pt-4">
                  <button type="reset" class="btn btn-light btn-lg">Reset details</button>
                  <button type="submit" class="btn btn-warning btn-lg ms-2">Proceed with Payment</button>
                </div>
					
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</form>
</body>
</html>