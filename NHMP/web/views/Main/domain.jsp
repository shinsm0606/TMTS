<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>서비스 소개</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700" rel="stylesheet">

    <link rel="stylesheet" href="/NHMP/resources/Main/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/NHMP/resources/Main/css/animate.css">
    
    <link rel="stylesheet" href="/NHMP/resources/Main/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/NHMP/resources/Main/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/NHMP/resources/Main/css/magnific-popup.css">

    <link rel="stylesheet" href="/NHMP/resources/Main/css/aos.css">

    <link rel="stylesheet" href="/NHMP/resources/Main/css/ionicons.min.css">

    <link rel="stylesheet" href="/NHMP/resources/Main/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/NHMP/resources/Main/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/NHMP/resources/Main/css/flaticon.css">
    <link rel="stylesheet" href="/NHMP/resources/Main/css/icomoon.css">
    <link rel="stylesheet" href="/NHMP/resources/Main/css/style.css">
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/NHMP/index.jsp">이 민 삼 수</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="/NHMP/index.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="/NHMP/views/Main/domain.jsp" class="nav-link">서비스 소개</a></li>
              <li class="nav-item"><a href="/NHMP/views/Main/hosting.jsp" class="nav-link" >기능소개</a></li>
              <li class="nav-item"><a href="/NHMP/views/Main/blog.jsp" class="nav-link">온라인 고객센터</a></li>
              <li class="nav-item"><a href="/NHMP/views/Main/contact.jsp" class="nav-link">이민삼수 소개</a></li>
              <% if(true) { //미 로그인%>
              	<li class="nav-item"><a href="/NHMP/views/Main/login.jsp" class="nav-link"><span>로그인</span></a></li>
              <% }else { //로그인%>
                  
              <% } %>
              
              <%-- <% if(true) { // 미회원이 보는 화면%>
              	&nbsp;
              <% } else if( loginEmployee.equals("admin") ) { // 관리자 로그인 시 %>
              	<li class="nav-item cta"><a href="/NHMP/views/ERP/main.jsp" class="nav-link"><span>시스템 관리</span></a></li>
              <% } else { // 요양병원 가입자 접속 시 %>
              	&nbsp;
              <% } %> --%>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <div class="hero-wrap hero-wrap-2" style="background-image: url('/NHMP/resources/Main/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-8 ftco-animate text-center text-center mt-5">
          	<p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>서비스 소개</span></p>
            <h1 class="mb-3 bread">서비스 소개</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-domain">
    	<div class="container">
    		<div class="row d-flex align-items-center justify-content-center">
    			<div class="col-lg-10 p-5 ftco-wrap ftco-animate">
    				<form action="#" class="domain-form d-flex mb-3">
              <div class="form-group domain-name">
                <input type="text" class="form-control name px-4" placeholder="Enter your domain name...">
              </div>
              <div class="form-group domain-select d-flex">
	              <div class="select-wrap">
                  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                  <select name="" id="" class="form-control">
                  	<option value="">.com</option>
                    <option value="">.net</option>
                    <option value="">.biz</option>
                    <option value="">.co</option>
                    <option value="">.me</option>
                  </select>
                </div>
                <input type="submit" class="search-domain btn btn-primary text-center" value="Search">
	            </div>
            </form>
            <p class="domain-price mt-2 text-center">
            	<span><small>.com</small> $9.75</span> 
            	<span><small>.net</small> $9.50</span> 
            	<span><small>.biz</small> $8.95</span> 
            	<span><small>.co</small> $7.80</span>
            	<span><small>.me</small> $7.95</span>
            </p>
    			</div>
    		</div>
    	</div>
    </section>
  
    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-4">Domain Pricing</h2>
            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="table-responsive">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr>
						        <th>TLD</th>
						        <th>Duration</th>
						        <th>Registration</th>
						        <th>Renewal</th>
						        <th>Transfer</th>
						        <th>Register</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr>
						        <td class="color">.com</td>
						        <td>1 Year</td>
						        <td>$70.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.net</td>
						        <td>1 Year</td>
						        <td>$75.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.org</td>
						        <td>1 Year</td>
						        <td>$65.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.biz</td>
						        <td>1 Year</td>
						        <td>$60.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.info</td>
						        <td>1 Year</td>
						        <td>$50.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.me</td>
						        <td>1 Year</td>
						        <td>$45.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.asia</td>
						        <td>1 Year</td>
						        <td>$45.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.mobi</td>
						        <td>1 Year</td>
						        <td>$45.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.org</td>
						        <td>1 Year</td>
						        <td>$45.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.us</td>
						        <td>1 Year</td>
						        <td>$45.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.jp</td>
						        <td>1 Year</td>
						        <td>$45.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.ph</td>
						        <td>1 Year</td>
						        <td>$45.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.eu</td>
						        <td>1 Year</td>
						        <td>$45.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						      <tr>
						        <td class="color">.pro</td>
						        <td>1 Year</td>
						        <td>$45.00</td>
						        <td>$5.00</td>
						        <td>$5.00</td>
						        <td><a href="#" class="btn btn-primary">Sign Up</a></td>
						      </tr>
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    	</div>
    </section>

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Ignite</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled mb-0">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Unseful Links</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Servers</a></li>
                <li><a href="#" class="py-2 d-block">Windos Hosting</a></li>
                <li><a href="#" class="py-2 d-block">Cloud Hosting</a></li>
                <li><a href="#" class="py-2 d-block">OS Servers</a></li>
                <li><a href="#" class="py-2 d-block">Linux Servers</a></li>
                <li><a href="#" class="py-2 d-block">Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Navigational</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Home</a></li>
                <li><a href="#" class="py-2 d-block">Domain</a></li>
                <li><a href="#" class="py-2 d-block">Hosting</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Blog</a></li>
                <li><a href="#" class="py-2 d-block">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Office</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="/NHMP/resources/Main/js/jquery.min.js"></script>
  <script src="/NHMP/resources/Main/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/NHMP/resources/Main/js/popper.min.js"></script>
  <script src="/NHMP/resources/Main/js/bootstrap.min.js"></script>
  <script src="/NHMP/resources/Main/js/jquery.easing.1.3.js"></script>
  <script src="/NHMP/resources/Main/js/jquery.waypoints.min.js"></script>
  <script src="/NHMP/resources/Main/js/jquery.stellar.min.js"></script>
  <script src="/NHMP/resources/Main/js/owl.carousel.min.js"></script>
  <script src="/NHMP/resources/Main/js/jquery.magnific-popup.min.js"></script>
  <script src="/NHMP/resources/Main/js/aos.js"></script>
  <script src="/NHMP/resources/Main/js/jquery.animateNumber.min.js"></script>
  <script src="/NHMP/resources/Main/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="/NHMP/resources/Main/js/google-map.js"></script>
  <script src="/NHMP/resources/Main/js/main.js"></script>
    
  </body>
</html>