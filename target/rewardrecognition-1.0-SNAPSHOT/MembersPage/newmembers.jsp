<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>NewMember-BOUNTY</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> 
  <link rel="stylesheet" href="css/newstyle.css">
  <link rel="stylesheet" href="css/stylex.css">
  <link rel="stylesheet" href="css/style.css">
  
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> 
  <link rel="stylesheet" href="../css/newstyle.css">
</head>

<style>
      .signupBody{height:100vh;padding:0 2.2em;background:var(--col3);}
      .signupNavbar{padding:1em 0;}
      .signupMainTitleCrate{font-size:26px;letter-spacing:.1em;}
      .signupSingleLink{font-size:18px;text-decoration: none;color:var(--col1);margin:0 30px;}
      .signupSingleLink:hover{text-decoration: underline;transition:.3s;}


      .signupTextCrate{padding: 100px;}
      .signiTextSloth{font-size:18px;line-height:34px;}

      .signupFormBigTitle{font-size:46px;}
      .signupFormCrate{padding:0 100px;}
      .signupFrom{padding:10px 0 10px 0;}
      .signupInputs{font-size:18px;padding:5px 8px;background:white;border:1px solid #000;border-radius:4px;
        margin:5px 0;}
      .signupsignupCrate{padding-top:10px;}
      .signupButton{font-size:20px;padding:7px 25px;border-radius:4px;background:#009150;color:whitesmoke;
        border:1px solid var(--col1);cursor: pointer;}
      .signupButton:hover {background:var(--col3);color:var(--col1);transition:.3s;}
/*      .signupForgetpwLink{color:#000; padding:7px 25px}*/
    </style>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <!--logo part-->

    <div class="d-flex align-items-center justify-content-between">
      <a href="dashboard.jsp" class="logo d-flex align-items-center">
        <span class="d-none d-lg-block">BOUNTY</span>
      </a>
    <!--        toggle-menu bar-->
    
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div>
    <!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div>
    <!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li>
        <!-- End Search Icon-->


        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/pp.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2"><b>S. Thapa Magar</b></span>
          </a>
        <!-- End Profile Image Icon -->
          
        <!--Nav Profile menu-->
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Swastika Thapa</h6>
              <span>Project Manager</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="admin?page=profile">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="admin?page=logout">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
 <aside id="sidebar" class="sidebar">
        <%@include file="../profilepage/aside.jsp" %>      
  </aside>
  <!-- ========================================End Sidebar===================================-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Members</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href=admin?page=dashboard">Home</a></li>
          <li class="breadcrumb-item active">Members</li>
          <li class="breadcrumb-item active">Add Employees</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <!-- tasks contents -->

                <!--    Employees-->
            <form action="admin?page=newmember" method="post" class="signupFrom bor flex fdc" >
              <input type="text" class="signupInputs signupInputEmail ff1" placeholder="Fullname" name="Fullname">
              <input type="text" class="signupInputs signupInputEmail ff1" placeholder="work email" name="Workemail">
              <input type="text" class="signupInputs signupInputEmail ff1" placeholder="password" name="Password">

              <select class="signupInputs" name="Department">
                <option value="na">Department N/A</option>
                <option value="requirmentEngineering">Requirement Engineering</option>
                <option value="design">Design</option>
                <option value="programming">Programming</option>
                <option value="qualityAssurance">Quality Assurance</option>
              </select>
              <select class="signupInputs" name="Post">
                <option value="na">Post N/A</option>
                <option value="intern">Intern</option>
                <option value="junior">Junior</option>
                <option value="senoir">Senoir</option>
                <option value="manager">Manager</option>
              </select>
              <input type="number" class="signupInputs signupInputEmail ff1" name="Phone"placeholder="phone numebr" name="Phone">
              <input type="text" class="signupInputs signupInputEmail ff1" placeholder="address"name="Address">
              
              <div class="signupsignupCrate bor flex pb10">
                  <input type="submit" value="Signup" class="signupButton totext ff1">

              </div>
            </form>
              
    

  </main><!-- End #main -->

  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>