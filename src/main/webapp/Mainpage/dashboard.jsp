<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Dashboard - BOUNTY</title>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> 
  <link rel="stylesheet" href="css/newstyle.css">

  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> 
  <link rel="stylesheet" href="../css/newstyle.css">

</head>

<body>

  <!-- ======= Header ======= -->
  
  <header id="header" class="header fixed-top d-flex align-items-center">
    <!--logo part-->

    <div class="d-flex align-items-center justify-content-between">
      <a href="admin?page=index" class="logo d-flex align-items-center">
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
            <img src="${pageContext.request.contextPath}/assets/img/pp.jpg" alt="Profile" class="rounded-circle">
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
  <!--=========================================End Sidebar=========================-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admin?page=dashboard">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
<!--        <div class="col-lg-8">-->
<!--          <div class="row">-->

            
            <!-- Tasks -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Tasks</h5>

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th scope="col">Task_Id</th>
                        <th scope="col">Task Lists</th>
                        <th scope="col">Due Date</th>
                        <th scope="col">Time</th>
                        <th scope="col">Reward Points</th>
                        <th scope="col">Reward Points</th>
                      </tr>
                    </thead>
                    <tbody>
                        
                        <c:forEach items="${empdash}" var="emplist" varStatus="status" begin="">
                            <tr>
                                <td>${status.count}</td>
                                <td>${emplist.taskname}</td>
                                <td>${emplist.date}</td>
                                <td>${emplist.time}</td>
                                <td>${emplist.rewardpoint}</td>
                                <td><a href="admin?page=taskdetails&id=${emplist.id}" class="badge bg-success">View Details</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                  </table>

                </div>

              </div>
            </div>
            <!--============================End tasks============================-->

            
<!--    Employees-->
            <div class="col-12">
              <div class="card navmain overflow-auto">


                <div class="card-body pb-0">
                  <h5 class="card-title">Employees</h5>

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th scope="col"></th>
                        <th scope="col">Name</th>
                        <th scope="col">Department</th>
                        <th scope="col">Post</th>
                        <th scope="col">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                <c:forEach items="${emptask}" var="emplist">
                      <tr>
                        <th scope="row"><a href="#"><img src="assets/img/A.png" height="30" width="30" class="rounded-circle" alt=""></a></th>
                        <td>${emplist.fullname}</td>
                        <td>${emplist.department}</td>
                        <td class="fw">${emplist.post}</td>
                        <td><a href="#" class="badge bg-success">View Details</a></td>
                      </tr>
                      </c:forEach>
             
                    </tbody>
                  </table>

                </div>

              </div>
            </div>
            
            <!--=========================================End Employees==============================-->


      </div>
    </section>

  </main><!-- End #main -->

  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
