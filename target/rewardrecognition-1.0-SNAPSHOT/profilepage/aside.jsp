<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin?page=dashboard">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->
      

    <!--    Task Nav-->
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
            <a href="admin?page=taskcompleted">
              <i class="bi bi-circle"></i><span>Completed</span>
            </a>
          </li>
          <li>
            <a href="admin?page=createtask">
              <i class="bi bi-circle"></i><span>Create new Task</span>
            </a>
          </li>
        </ul>
      </li>
      
    <!--============================================End Task Nav======================================================-->
 
        <!-- Members Nav-->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
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
     
      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin?page=profile">
          <i class="bi bi-person"></i>
          <span>Profile</span>
        </a>
      </li>
      <!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin?page=logout">
          <i class="bi bi-box-arrow-in-right"></i>
          <span>Log Out</span>
        </a>
      </li>
      <!-- ================================End Login Page Nav===================== -->

    </ul>
    </body>
</html>
