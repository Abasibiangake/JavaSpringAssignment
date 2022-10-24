<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</style>
</head>
<body>
<form action = "checkout" method="post">
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
                <h2 class="text-center fw-bold mx-3 mb-0">SPORT PAGE</h2>

               <br></br>

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Please select sport: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="checkbox" name="basketballSport" id="basketballSport"
                      value="option1" />
                    <label class="form-check-label" for="basketballSport">BasketBall</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="checkbox" name="footballSport" id="footballSport"
                      value="option2" />
                    <label class="form-check-label" for="footballSport">Football</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="checkbox" name="rugbySport" id="rugbySport"
                      value="option3" />
                    <label class="form-check-label" for="rugbySport">Rugby</label>
                  </div>
                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="checkbox" name="baseballSport" id="baseballSport"
                      value="option4" />
                    <label class="form-check-label" for="baseballSport">Baseball</label>
                  </div>

                </div>
                
                <br></br>
                <div class="divider d-flex align-items-center my-4">
                <h4>UNIFORM INFORMATION</h4>
                </div>
                
                <div class="row">
                  <div class="col-md-6 mb-4">
				<label for="shirtSize">Youth Shirt</label>
				<select name="shirtSize" id="shirtSize">
				  <option selected value='1'>Please select size</option>
				    <option value='2'>XSmall</option>
				    <option value='3'>Small</option>
				    <option value='4'>Medium</option>
				    <option value='5'>Large</option>
				</select>
				</div>
                  
                  <div class="col-md-6 mb-4">
                  
				<label for="shortSize">Youth Short</label>
				<select name="shortSize" id="shortSize">
				  <option selected value='1'>Please select size</option>
				    <option value='2'>XSmall</option>
				    <option value='3'>Small</option>
				    <option value='4'>Medium</option>
				    <option value='5'>Large</option>
				</select>
				</div>
				</div>
				
				<div class="row">
                  <div class="col-md-6 mb-4">
					<label for="shirtQuantity">Quantity</label>
					<select name="shirtQuantity" id="shirtQuantity">
					  <option selected value='1'>1</option>
					    <option value='2'>2</option>
					    <option value='3'>3</option>
					    <option value='4'>4</option>
					</select>
					</div>
                  <div class="col-md-6 mb-4">
					
					<label for="shortQuantity">Quantity</label>
					<select name="shortQuantity" id="shortQuantity">
					  <option selected value='1'>1</option>
					    <option value='2'>2</option>
					    <option value='3'>3</option>
					    <option value='4'>4</option>
					</select>
					</div>
					</div>
					
					<br></br>
					<br></br>
					<div class="d-flex center pt-4">
                  <button type="reset" class="btn btn-light btn-lg">Reset all</button>
                  <button type="submit" class="btn btn-warning btn-lg ms-2">CHECKOUT</button>
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