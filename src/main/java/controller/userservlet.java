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

@WebServlet(name = "userservlet", urlPatterns = {"/user"})
public class userservlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String page = request.getParameter("page");
        out.print(page+"<br/>");
        
        if(page.equalsIgnoreCase("tasklist")){
            List<employee> taskList = new userservice().showTask();
            request.setAttribute("emppp",taskList);
            RequestDispatcher rd = request.getRequestDispatcher("empPage/empTaskList.jsp");
            rd.forward(request,response);
        }
        
//        For redirecting to completed task page like ...
        else if(page.equalsIgnoreCase("completedTask")){
            List<employee> taskList = new userservice().showTask();
            request.setAttribute("emppp",taskList);
            RequestDispatcher rd = request.getRequestDispatcher("empPage/empCompletedTask.jsp");
            rd.forward(request,response);
        }
//        For redirecting to members page like ....
        else if(page.equalsIgnoreCase("members")){
            List<employee> em = new userservice().showEmployee();
            request.setAttribute("employeelist", em);
            out.print(em.size());
            RequestDispatcher rd = request.getRequestDispatcher("empPage/empMembers.jsp");
            rd.forward(request,response);
        }
//        For redirecting to profile page like ....
        else if(page.equalsIgnoreCase("profile")){
            RequestDispatcher rd = request.getRequestDispatcher("empPage/empProfile.jsp");
            rd.forward(request, response);
        }
        //        to show the tasks details in TaskDetails.jsp
        else if(page.equalsIgnoreCase("taskdetails")){
            int id = Integer.parseInt(request.getParameter("id"));
            employee em = new userservice().taskdetails(id);
            out.print("em "+em.getTaskname());
            request.setAttribute("details", em);
            RequestDispatcher rd = request.getRequestDispatcher("empPage/empTaskDetails.jsp");
            rd.forward(request,response);
        }
        //         For Storing the create new task
        else if(page.equalsIgnoreCase("submitreport")){
            int id = Integer.parseInt(request.getParameter("id"));
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
                em.setReportfile(filePath);
                em.setStage(2);
                em.setId(id);
                new userservice().addTaskReport(id,em);
            }
            catch(Exception e){
                out.print("ERROR: "+e);
            }
            System.out.printf("Report file submitted.");
            RequestDispatcher rd = request.getRequestDispatcher("user?page=tasklist");
            rd.forward(request, response);
        }
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
