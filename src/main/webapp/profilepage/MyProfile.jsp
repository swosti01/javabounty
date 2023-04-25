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
            <%@include file="../profilepage/aside.jsp" %>
        </aside>
        <!-- ========================================End Sidebar===================================-->

        <main id="main" class="main">
          <div class="pagetitle">
            <h1>Profile</h1>
            <nav>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="user?page=tasklist">Home</a></li>
                <li class="breadcrumb-item">Page</li>
                <li class="breadcrumb-item active">Profile</li>
              </ol>
            </nav>
          </div><!-- End Page Title -->

          <section class="section profile">
            <div class="row">
              <div class="col-xl-4">

                <div class="card">
                  <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                    <img src="assets/img/pp.jpg" alt="Profile" class="rounded-circle">
                    <h2>${userinfo.fullname}</h2>
                    <h3>${userinfo.department}</h3>
                  </div>
                </div>

              </div>

              <div class="col-xl-8">

                <div class="card">
                  <div class="card-body pt-3">
                    <!-- Bordered Tabs -->
                    <ul class="nav nav-tabs nav-tabs-bordered">

                      <li class="nav-item">
                        <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
                      </li>

                      <li class="nav-item">
                        <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
                      </li>

                    </ul>
                    <div class="tab-content pt-2">


      <!--                  Profile overview-->
                      <div class="tab-pane fade show active profile-overview" id="profile-overview">
                        <h5 class="card-title">About</h5>
                        <p class="small fst-italic">${userinfo.about}</p>

                        <h5 class="card-title">Profile Details</h5>

                      <div class="row">
                          <div class="col-lg-3 col-md-4 label ">Full Name</div>
                          <div class="col-lg-9 col-md-8">
                              ${userinfo.fullname}
                          </div>
                      </div>

                      <div class="row">
                          <div class="col-lg-3 col-md-4 label">Department</div>
                          <div class="col-lg-9 col-md-8">${userinfo.department}</div>
                      </div>
                      
                      <div class="row">
                          <div class="col-lg-3 col-md-4 label">Post</div>
                          <div class="col-lg-9 col-md-8">${userinfo.post}</div>
                      </div>

                      <div class="row">
                          <div class="col-lg-3 col-md-4 label">Address</div>
                          <div class="col-lg-9 col-md-8">${userinfo.address}</div>
                      </div>

                      <div class="row">
                          <div class="col-lg-3 col-md-4 label">Phone</div>
                          <div class="col-lg-9 col-md-8">${userinfo.phone}</div>
                      </div>

                      <div class="row">
                          <div class="col-lg-3 col-md-4 label">Work Email</div>
                          <div class="col-lg-9 col-md-8">${userinfo.workemail}</div>
                      </div>

      <!--                  for get input from database-->
                     


                      </div> <!--end-->


                      <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                        <!-- Profile Edit Form -->
                        <form action="admin?page=updateprofile" method="post">
                          <div class="row mb-3">
                            <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Full Name</label>
                            <div class="col-md-8 col-lg-9">
                                <input type="text" value="${userinfo.id}" name="id" hidden>
                              <input type="text" class="form-control" id="fullName" value="${userinfo.fullname}" name="fullname">
                            </div>
                          </div>

                          <div class="row mb-3">
                            <label for="about" class="col-md-4 col-lg-3 col-form-label">About</label>
                            <div class="col-md-8 col-lg-9">
                              <textarea class="form-control" id="about" style="height: 100px"  name="about">${userinfo.about}</textarea>
                            </div>
                          </div>

                          <div class="row mb-3">
                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Department</label>
                            <div class="col-md-8 col-lg-9">
                              <input type="text" class="form-control" id="Job" value="${userinfo.department}"  name="department">
                            </div>
                          </div>
                            
                          <div class="row mb-3">
                            <label for="Job" class="col-md-4 col-lg-3 col-form-label">Post</label>
                            <div class="col-md-8 col-lg-9">
                              <input type="text" class="form-control" id="Job" value="${userinfo.post}"  name="post">
                            </div>
                          </div>

                          <div class="row mb-3">
                            <label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
                            <div class="col-md-8 col-lg-9">
                              <input type="text" class="form-control" id="Address" value="${userinfo.address}"  name="address">
                            </div>
                          </div>

                          <div class="row mb-3">
                            <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                            <div class="col-md-8 col-lg-9">
                              <input type="text" class="form-control" id="Phone" value="${userinfo.phone}" name="phone">
                            </div>
                          </div>

                          <div class="row mb-3">
                            <label for="Email" class="col-md-4 col-lg-3 col-form-label">Work Email</label>
                            <div class="col-md-8 col-lg-9">
                              <input type="email" class="form-control" id="Email" value="${userinfo.workemail}" name="workemail">
                            </div>
                          </div>

                          <div class="text-center">
                              <input type="submit" class="btn btn-primary" value="Save Changes">
                          </div>
                        </form><!-- End Profile Edit Form -->

                      </div>

                    </div><!-- End Bordered Tabs -->

                  </div>
                </div>

              </div>

            </div>
          </section>
        </main>



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