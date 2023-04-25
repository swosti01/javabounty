package controller;
import Hashing.HashPassword;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.employee;
import userservice.userservice;

@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)

@WebServlet(name = "myservlet", urlPatterns = {"/admin"})
public class myservlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String page = request.getParameter("page");
        
        out.print(page+"<br/>");
//        ACCOUNT
//        TASK
//        SIMPLE REDIRECT
//        PULL DATA AND REDIRECT
              
//        ======================================== ACCOUNT CREATION, LOG IN, LOG OUT ========================================
//        to create new account or register
        if(page.equalsIgnoreCase("registerpage")){ 
            try{
            employee em = new employee();
            em.setFullname(request.getParameter("Fullname"));
            em.setPassword( HashPassword.hashThisPass(request.getParameter("Password")));
            em.setPost(request.getParameter("Post"));
            em.setAddress(request.getParameter("Address"));
            em.setPhone(request.getParameter("Phone"));
            em.setWorkemail(request.getParameter("Workemail"));
            new userservice().insertuser(em);
            }catch(Exception e){
                out.print("ERROR " +e);
            } 
        }
//        to log in
        else if(page.equalsIgnoreCase("login")){
            employee emp = new employee();
            emp.setWorkemail(request.getParameter("Workemail"));
            emp.setPassword(HashPassword.hashThisPass(request.getParameter("password")));
            out.print("<br/>You might have forgotten to turn on xampp!!!<br/>");
            employee em = new userservice().getUserRow(emp);
            if(em != null){
                HttpSession sess = request.getSession();
                sess.setAttribute("userinfo",em);
                out.print("em "+em.getFullname()+"<br/>");
                if(em.getPost().equalsIgnoreCase("Manager")){
                    RequestDispatcher rd = request.getRequestDispatcher("admin?page=dashboard");
                    rd.forward(request,response);
                }
                else{
                    RequestDispatcher rd = request.getRequestDispatcher("user?page=tasklist");
                    rd.forward(request,response);
                }
            }
            else{
                out.println("incorrect");
                RequestDispatcher rd3 = request.getRequestDispatcher("Mainpage/signin.jsp");
                rd3.forward(request,response);
            }
        }
//        to log out
        else if(page.equalsIgnoreCase("logout")){
            HttpSession sess = request.getSession(false);
            sess.invalidate();
            
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }
//        For insert the new members example creating new account for employee by manager
        else if(page.equalsIgnoreCase("newmember")){
            try{
                employee em = new employee();
                em.setFullname(request.getParameter("Fullname"));
                em.setPassword( HashPassword.hashThisPass(request.getParameter("Password")));
                em.setDepartment(request.getParameter("Department"));
                em.setPost(request.getParameter("Post"));
                em.setAddress(request.getParameter("Address"));
                em.setPhone(request.getParameter("Phone"));
                em.setWorkemail(request.getParameter("Workemail"));
//                em.setImage(request.getParameter("Image"));
//                out.print("fullname "+em.getFullname()+"<br/>");
//                out.print("passowrd "+em.getPassword()+"<br/>");
//                out.print("department "+em.getDepartment()+"<br/>");
//                out.print("post "+em.getPost()+"<br/>");
//                out.print("address "+em.getAddress()+"<br/>");
//                out.print("phone "+em.getPhone()+"<br/>");
//                out.print("workemail "+em.getWorkemail()+"<br/>");
//                out.print("image "+em.getImage()+"<br/>");
                new userservice().insertnewmember(em);
            }catch(Exception e){
                out.print("ERROR " +e);
            }
            System.out.printf("Claim Inserted");            
            RequestDispatcher rd = request.getRequestDispatcher("admin?page=members");
            rd.forward(request, response);
        }
//        ======================================== END OF ACCOUNT SESSION ========================================
//        ======================================== CREATE, EDIT, DELETE NEW TASK ========================================
//         For Storing the create new task
        else if(page.equalsIgnoreCase("submittask")){
            Part filePart = request.getPart("file");
            String filePathName = "";
            String filePath = "";
            try{
                String fileName = filePart.getSubmittedFileName();
                filePathName = "D:\\AllFile1\\JavaCode\\javabounty-master\\src\\main\\webapp\\uploadfile\\" + fileName;
                filePath = "uploadfile\\" + fileName;
                for (Part part : request.getParts()){
                    part.write(filePathName);
                }
                out.print("filePathName "+ filePathName);
                employee em = new employee();
                em.setTaskname(request.getParameter("taskname"));
                em.setInstruction(request.getParameter("instruction"));
                em.setTag(request.getParameter("tag"));
                em.setDate(request.getParameter("date"));
                em.setTime(request.getParameter("time"));
                em.setRewardpoint(request.getParameter("rewardpoint"));
                em.setWorkfile(filePath);
                new userservice().insertcreateTask(em);
            }
            catch(Exception e){
                out.print("ERROR: "+e);
            }
            System.out.printf("Task created");
            RequestDispatcher rd = request.getRequestDispatcher("admin?page=task");
            rd.forward(request, response);
        }
//        for giving reward point and feedback
        else if(page.equalsIgnoreCase("givefeedback")){
            int id = Integer.parseInt(request.getParameter("id"));
            out.print("idd "+id);
            employee em = new employee();
            em.setRewardpoint(request.getParameter("rpoint"));
            em.setFeedback(request.getParameter("feedback"));
            try{
                new userservice().addFeedback(id,em);
            }
            catch(SQLException e){
                e.printStackTrace();
            }
            RequestDispatcher rd = request.getRequestDispatcher("admin?page=taskdetails&id="+id);
            rd.forward(request,response);
        }
//        for deleting exisiting task
        else if(page.equalsIgnoreCase("deletetask")){
            int id = Integer.parseInt(request.getParameter("id"));
            new userservice().deleteTask(id);
            out.print("Task deleted");
            RequestDispatcher rd = request.getRequestDispatcher("admin?page=task");
            rd.forward(request, response);
        }
//        ======================================== END FOR CREATE, EDIT, DELETE TASK ========================================
//        ======================================== SIMPLE REDIRECTING FROM ONE PAGE TO ANOTEHR PAGE ========================================
//        Redirect link to index.jsp
        else if(page.equalsIgnoreCase("index")){
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
//        Redirect link to sign.jsp
        else if(page.equalsIgnoreCase("signin")){
            RequestDispatcher rd = request.getRequestDispatcher("Mainpage/signin.jsp");
            rd.forward(request, response);
        }
//        To redirect in Create new task link to createtask.jsp
        else if(page.equalsIgnoreCase("createtask")){
            RequestDispatcher rd = request.getRequestDispatcher("TasksPage/createtask.jsp");
            rd.forward(request, response);
        }
//        To redirect in Returened link to Returned.jsp
        else if(page.equalsIgnoreCase("returned")){
            RequestDispatcher rd = request.getRequestDispatcher("TasksPage/Returned.jsp");
            rd.forward(request, response);
        }
//        To redirect in myprofile link to MyProfile.jsp
        else if(page.equalsIgnoreCase("profile")){
            RequestDispatcher rd = request.getRequestDispatcher("profilepage/MyProfile.jsp");
            rd.forward(request, response);
        }
//        To redirect in add new  to newmembers.jsp 
        else if(page.equalsIgnoreCase("addmember")){
            RequestDispatcher rd = request.getRequestDispatcher("/MembersPage/newmembers.jsp");
            rd.forward(request, response);
        }
//        To redirect a rewards to reward.jsp
        else if(page.equalsIgnoreCase("reward")){
            RequestDispatcher rd = request.getRequestDispatcher("/RewardPage/Reward.jsp");
            rd.forward(request, response);
        }
//        Feedback Nav
        else if(page.equalsIgnoreCase("feedback")){
            int id = Integer.parseInt(request.getParameter("id"));
            employee em = new userservice().taskdetails(id);
            out.print("em "+em.getTaskname());
            request.setAttribute("details", em);
            RequestDispatcher rd = request.getRequestDispatcher("/FeedbackPage/feedback.jsp");
            rd.forward(request, response);
        }
//        ======================================== END OF SIMPLE REDIRECT ========================================        
//        ======================================== REDIRECTING AND PULLING DATA FROM DB ========================================        
//        Redirect link to dashboard.jsp
        else if(page.equalsIgnoreCase("dashboard")){
            List<employee> emList = new userservice().showTask();
            request.setAttribute("empdash",emList);
            List<employee> emLists = new userservice().showEmployee();
            request.setAttribute("emptask",emLists);
            RequestDispatcher rd = request.getRequestDispatcher("Mainpage/dashboard.jsp");
            rd.forward(request, response);
        }
//        To redirect in active Employees to members.jsp 
        else if(page.equalsIgnoreCase("members")){
            List<employee> em = new userservice().showEmployee();
            request.setAttribute("employeelist", em);
            out.print(em.size());
            RequestDispatcher rd = request.getRequestDispatcher("/MembersPage/members.jsp");
            rd.forward(request, response);
        }
//        To get the list of task tasklist
        else if(page.equalsIgnoreCase("task")){
            List<employee> emList = new userservice().showTask();
            request.setAttribute("emppp",emList);
            RequestDispatcher rd = request.getRequestDispatcher("TasksPage/Tasks.jsp");
            rd.forward(request,response);
        }
//        to show the tasks details in TaskDetails.jsp
        else if(page.equalsIgnoreCase("taskdetails")){
            int id = Integer.parseInt(request.getParameter("id"));
            employee em = new userservice().taskdetails(id);
            out.print("em "+em.getTaskname());
            request.setAttribute("details", em);
            RequestDispatcher rd = request.getRequestDispatcher("TasksPage/TaskDetails.jsp");
            rd.forward(request,response);
        }
//        ======================================== END OF REDIRECTING AND PULLING DATA FROM DB ========================================        
        else{
            out.print("There is no page equals to");
        }
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
