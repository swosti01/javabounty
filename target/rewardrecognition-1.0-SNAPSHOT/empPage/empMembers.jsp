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
        <style>
            .empNameFirstLetter{background:#1cac78;height:36px;width:36px;display:flex;justify-content:center;align-items:center;color:#fff;
                border-radius:50%;}
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
                    <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi-menu-button-wide"></i><span>Tasks</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="user?page=tasklist" class="" ><i class="bi bi-circle"></i><span>Assigned</span></a>
                        </li>
                        <li>
                            <a href="user?page=completedtask"><i class="bi bi-circle"></i><span>Completed</span></a>
                        </li>
                    </ul>
                </li> 
                <li class="nav-item">
                    <a class="nav-link " data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-journal-text"></i><span>Members</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="forms-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="user?page=Members" class="active"><i class="bi bi-circle"></i><span>Members</span></a>
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
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item">Tasks</li>
                        <li class="breadcrumb-item active">Assigned</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->


            <!-- tasks contents -->

            <form>
                <!-- Tasks -->
                <div class="col-12">
                    <div class="card recent-sales overflow-auto">

                        <div class="card-body">
                            <h5 class="card-title">Members</h5>

                            <table class="table table-borderless">
                                <thead>
                                  <tr>
                                    <th scope="col"></th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Department</th>
                                    <th scope="col">Post</th>
<!--                                    <th scope="col">Status</th>-->
                                  </tr>
                                </thead>
                                <tbody>
                                  <c:forEach items="${employeelist}" var="emplist">
                                  <tr>
                                    <th scope="row" style="display:flex;">
                                        <div class="empNameFirstLetter" data-value="${emplist.fullname}"></div>
                                    </th>
                                    <td>${emplist.fullname}</td>
                                    <td>${emplist.department}</td>
                                    <td class="fw">${emplist.post}</td>
<!--                                    <td><a href="#" class="badge bg-success">View Details</a></td>-->
                                  </tr>
                                  </c:forEach>
                                </tbody>
                            </table>

                        </div>

                    </div>
                </div>
                <!--============================End tasks============================-->


            </form>


        </main><!-- End #main -->



        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <script>
            
            var empNameFirstLetter = document.querySelectorAll(".empNameFirstLetter");
            console.log("cat")
           getFirstLetter()
            function getFirstLetter(){
                for(var a=0;a<empNameFirstLetter.length;a++){
                    var name = empNameFirstLetter[a].getAttribute('data-value');
                    empNameFirstLetter[a].innerText = name[0];
                    console.log(a,name)
                }
            }
        </script>
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