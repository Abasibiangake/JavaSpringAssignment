<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
    crossorigin="anonymous"></script>
<style>
.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
	span{color:red;}


divider:after,
.divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}

.card-registration .select-arrow {
top: 13px;
}
</style>
</head>
<body>
<form action = "register" method="post">
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
              <h2 class="text-center fw-bold mx-3 mb-0">Student Registration Form</h2>
                
                <br></br>
					<div class="divider d-flex align-items-center my-4">
		            	<h4 >STUDENT INFORMATION</h4>
		          </div>
		          
		          
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="firstname" name="firstname" placeholder= "Enter Your First Name" class="form-control form-control-lg" required/>
                      <label class="form-label" for="firstname">First name</label><span>*</span>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="lastname" name="lastname" placeholder= "Enter Your Last Name" class="form-control form-control-lg" required/>
                      <label class="form-label" for="lastname">Last name</label> <span>*</span>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="username" name="username" placeholder= "Enter username" class="form-control form-control-lg" required/>
                      <label class="form-label" for="username">Username: </label><span>*</span>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="password" id="password" name="password" placeholder= "Enter password" class="form-control form-control-lg" required/>
                      <label class="form-label" for="password">Password: </label> <span>*</span>
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="address" name="address" placeholder= "Enter address" class="form-control form-control-lg" required/>
                  <label class="form-label" for="address">Address</label>
                </div>
                
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="city" name="city" placeholder= "Enter city" class="form-control form-control-lg" required/>
                      <label class="form-label" for="city">City: </label><span>*</span>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="postalCode" name="postalCode" placeholder= "Enter Postal Code" class="form-control form-control-lg" required/>
                      <label class="form-label" for="postalCode">Postal/Zip Code: </label> <span>*</span>
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="number" id="studentId" name="studentId" placeholder= "Enter Student ID" class="form-control form-control-lg" required/>
                      <label class="form-label" for="studentId">Student Id: </label><span>*</span>
                    </div>
                  </div>
                  </div>

   				<p> Phone Number :
					<span>*</span>
					<input type="number" name="stdAreaCode" placeholder= "Enter Area Code" required/>
					<input type="number" name="stdPhoneNumber" placeholder= "Enter Phone Number" required/> </p>
					  
	  
			   
				<br></br>
					<div class="divider d-flex align-items-center my-4">
		            	<h4 >DOCTOR INFORMATION</h4>
		          </div>             

                 <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
	                  <input type="text" id="doctorFirstName" name ="doctorFirstName" class="form-control form-control-lg" placeholder= "Enter Doctor's First Name" required />
	                  <label class="form-label" for="doctorFirstName">Doctor First Name: </label> <span>*</span>
                	</div>
                	</div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="doctorLastName" name="doctorLastName" placeholder= "Enter Doctor Last Name" class="form-control form-control-lg" required/>
                      <label class="form-label" for="doctorLastName">Doctor Last Name: </label> <span>*</span>
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                  <input type="number" id="docPhoneNumber" class="form-control form-control-lg" name="docPhoneNumber" placeholder= "Enter Doctor Phone Number" required/>
                  <label class="form-label" for="docPhoneNumber">Doctor Phone Number: </label> <span>*</span>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="course" class="form-control form-control-lg" />
                  <label class="form-label" for="course">Course Programme</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="email" id="emailAddress" name="emailAddress" placeholder= "Enter Email Address" class="form-control form-control-lg" required/>
                      <label class="form-label" for="emailAddress">Email Address: </label>  <span>*</span>
                </div>

                <div class="d-flex justify-content-end pt-3">
                  <button type="reset" class="btn btn-light btn-lg">Reset all</button>
                  <button type="submit" class="btn btn-warning btn-lg ms-2">Submit form</button>
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