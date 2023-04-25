<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Feedback-BOUNTY</title>
        <meta content="" name="description">
        <meta content="" name="keywords">
        <!--  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
          <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> 
          <link rel="stylesheet" href="css/newstyle.css">-->

        <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> 
        <link rel="stylesheet" href="../css/newstyle.css">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/stylex.css">
        <style>
            .feedbackTable tr td{padding:3px 0;}
            .feedbackTextarea,feedbackInput{width:400px;height:100px;resize:none;padding:3px 5px;font-size:16px;}
            .feedbackTextarea:focus,.feedbackInput:focus{outline:none;}
            .feedbackInput{height:auto;}
            
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
                                <a class="dropdown-item d-flex align-items-center" href="admin?page=index">
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
                    <a class="nav-link collapsed" href="admin?page=dashboard">
                        <i class="bi bi-grid"></i>
                        <span>Dashboard</span>
                    </a>
                </li><!-- End Dashboard Nav -->

                <!--bi-menu-button-wide-->



                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="admin?page=task">
                        <i class="bi bi-menu-button-wide"></i><span>Tasks</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="admin?page=task">
                                <i class="bi bi-circle"></i><span>Assigned</span>
                            </a>
                        </li>
                        <li>
                            <a href="admin?page=createtask">
                                <i class="bi bi-circle"></i><span>Create new Task</span>
                            </a>
                        </li>
                        <li>
                            <a href="admin?page=returned">
                                <i class="bi bi-circle"></i><span>Returned</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="bi bi-circle"></i><span>Past Due</span>
                            </a>
                        </li>  
                    </ul>
                </li>


                <!-- End Task Nav -->

                <!-- Members Nav-->
                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="admin?page=members">
                        <i class="bi bi-journal-text"></i><span>Members</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">

                        <li>
                            <a href="admin?page=members">
                                <i class="bi bi-circle"></i><span>Active Employees</span>
                            </a>
                        </li>

                        <li>
                            <a href="admin?page=addmember">
                                <i class="bi bi-circle"></i><span>Add new</span>
                            </a>
                        </li>

                    </ul>
                </li>
                <!--================================End Members Nav===================================================== -->


                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-layout-text-window-reverse"></i><span>Rewards</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="admin?page=reward">
                                <i class="bi bi-circle"></i><span>Reward</span>
                            </a>
                        </li>
                    </ul>
                </li> 
                <!--      End Rewards Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="admin?page=feedback">
                        <i class="bi bi-gem"></i><span>Feedback</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="icons-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="admin?page=feedback" class="active" >
                                <i class="bi bi-circle"></i><span>Send Feedback</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--      End Icons Nav -->

                <li class="nav-heading">Pages</li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="admin?page=profile">
                        <i class="bi bi-person"></i>
                        <span>Profile</span>
                    </a>
                </li><!-- End Profile Page Nav -->


                <li class="nav-item">
                    <a class="nav-link collapsed" href="admin?page=registerpage">
                        <i class="bi bi-card-list"></i>
                        <span>Register</span>
                    </a>
                </li><!-- End Register Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="admin?page=signin">
                        <i class="bi bi-box-arrow-in-right"></i>
                        <span>Login</span>
                    </a>
                </li><!-- End Login Page Nav -->

            </ul>

        </aside>
        <!-- ========================================End Sidebar===================================-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Send Feedback</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin?page=dashboard">Home</a></li>
                        <li class="breadcrumb-item active">Tasks</li>
                        <li class="breadcrumb-item active">Returned</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <!-- tasks contents -->

            <form action="admin?page=givefeedback&id=${details.id}" class="card p20 pt1 bor" method="post">
                <h5 class="card-title bor">Task Detail</h5>
                  <table class="feedbackTable w100 bor">
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
                            No File
                          </td>
                      </tr>
                      <tr>
                          <td>Feedback</td>
                          <td>
                              <textarea class="feedbackTextarea" placeholder="write feedback..." name="feedback"></textarea>
                          </td>
                      </tr>
                      <tr>
                          <td>Reward Point</td>
                          <td>
                              <input class="feedbackInput" type="text" placeholder="give reward points" name="rpoint">
                          </td>
                      </tr>
                    </table>
                    
                    
                    <div class="signinSigninCrate pt15 flex bor">
                        <input type="submit" class="updateButton">
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