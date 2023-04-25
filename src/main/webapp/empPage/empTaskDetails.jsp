<%@page import="model.employee"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Tasks-BOUNTY</title>
        <meta content="" name="description">
        <meta content="" name="keywords">
        <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> 
        <link rel="stylesheet" href="../css/newstyle.css">

        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> 
        <link rel="stylesheet" href="css/newstyle.css">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/stylex.css">
        <style>
             .taskdetailsTable tr td{padding:3px 0;}
      
            .updateButton{font-size:18px;padding:5px 8px;border-radius:4px;
                border:none;cursor: pointer; background-color: #1CAC78;color: white;margin-right:15px;}
            .deleteButton{font-size:18px;padding:5px 8px;border-radius:4px;border:none;cursor: pointer; 
                background-color: #D30000;color: white;}
            .updateButton:hover {background: #00755E;color:whitesmoke;transition:.3s;}
            .deleteButton:hover {background: #BF0A30;color:whitesmoke;transition:.3s;}
        </style>
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">
            <!--logo part-->

            <div class="d-flex align-items-center justify-content-between">
                <a href="index.jsp" class="logo d-flex align-items-center">
                    <span class="d-none d-lg-block">BOUNTY</span>
                </a>
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
                            <img src="../assets/img/pp.jpg" alt="Profile" class="rounded-circle">
                            <span class="d-none d-md-block dropdown-toggle ps-2"><b>${userinfo.fullname}</b></span>
                        </a>
                        <!-- End Profile Image Icon -->

                        <!--Nav Profile menu-->
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                            <li class="dropdown-header">
                                <h6>${userinfo.fullname}</h6>
                                <span>${userinfo.department}</span>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="user?page=profile">
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

            <ul class="sidebar-nav" id="sidebar-nav">

                <li class="nav-item">
                    <a class="nav-link " data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                        <i class=" bi-menu-button-wide"></i><span>Tasks</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="forms-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="user?page=tasklist" class="active" ><i class="bi bi-circle"></i><span>Assigned</span></a>
                        </li>
                        <li>
                            <a href="user?page=completedtask" class=""><i class="bi bi-circle"></i><span>Completed</span></a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-journal-text bi"></i><span>Members</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="user?page=Members"><i class="bi bi-circle"></i><span>Members</span></a>
                        </li>
                    </ul>
                </li> 
                
                <li class="nav-heading">Pages</li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="user?page=profile">
                        <i class="bi bi-person"></i>
                        <span>Profile</span>
                    </a>
                </li><!-- End Profile Page Nav -->
                <li class="nav-item"> 
                    <a class="nav-link collapsed" href="admin?page=logout">
                        <i class="bi bi-box-arrow-right"></i>
                        <span>Log Out</span>
                    </a>
                </li>

            </ul>

        </aside>
        <!-- ========================================End Sidebar===================================-->

        <main id="main" class="main">

            <div class="pagetitle">
              <h1>Assigned</h1>
              <nav>
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="admin?page=dashboard">Home</a></li>
                  <li class="breadcrumb-item">Tasks</li>
                  <li class="breadcrumb-item active">Assigned</li>
                </ol>
              </nav>
            </div><!-- End Page Title -->


            <!-- tasks contents -->

                  <div class="card">
                    <div class="card-body pt-3">
                      <form action="user?page=submitreport" method="post" class="tab-content pt-2" enctype="multipart/form-data">
                          <input type="text" value="${details.id}" name="id" hidden>
        <!--                  Project Details-->

                        <div class="taskdetails tab-pane fade show active profile-overview bor flex" id="project overview">
                          <h5 class="card-title bor">Task Details</h5>
                          <table class="taskdetailsTable w100 bor">
                          <%
//                          employee emp =(employee) pageContext.getAttribute("emplist");
                            employee emp =(employee) request.getAttribute("details");
                            
                          %>
                              <tr>
                                  <td>Title</td>
                                  <td>
                                    ${details.taskname}
                                  </td>
                              </tr>
                              <tr>
                                  <td>Instruction</td>
                                  <td>
                                    ${details.instruction}
                                  </td>
                              </tr>
                              <tr>
                                  <td>Instruction File</td>
                                  <td>
                                    <a href="${details.workfile}" download>Download</a>
                                  </td>
                              </tr>
                              <tr>
                                  <td>Due Date</td>
                                  <td>
                                    ${details.date}
                                  </td>
                              </tr>
                              <tr>
                                  <td>Time</td>
                                  <td>
                                    ${details.time}
                                  </td>
                              </tr>
                              <tr>
                                  <td>Tag</td>
                                  <td>
                                    ${details.tag}
                                  </td>
                              </tr>
                              <tr>
                                  <td>Report File</td>
                                  <td>
                                      <%if(emp.getStage()==1){%>
                                      <input type="file" accept="application/pdf,application/vnd.ms-excel" name="file" class="form-control" id="formFile">
                                      <%}else{%>
                                      <a href="${details.reportfile}" download>Download</a>
                                      <%}%>
                                  </td>
                              </tr>
                              <tr>
                                  <td>Feedback</td>
                                  <td>
                                    ${details.feedback}
                                  </td>
                              </tr>
                              <tr>
                                  <td>Reward Point</td>
                                  <td>
                                    ${details.rewardpoint}
                                  </td>
                              </tr>
                            </table>


                            <div class="signinSigninCrate pt15 flex bor">
                                <input type="submit" class="updateButton">
                            </div>
                        </div> <!--end-->
                    </form>
                </div><!-- End Bordered Tabs -->
            </div>



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