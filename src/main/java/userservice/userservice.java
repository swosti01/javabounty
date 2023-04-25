package userservice;

import DBConnection.DBConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.employee;

public class userservice {
    public void insertuser(employee ep){
        String query= "insert into infotabel (About,Fullname,Password,Department, Post,Address,Phone,Workemail,Image)" + "values(?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
//            ps.setInt(1,ep.getEmployee_Id());
            ps.setString(1,ep.getAbout());
            ps.setString(2,ep.getFullname());
            ps.setString(3,ep.getPassword());
            ps.setString(4,ep.getDepartment());
            ps.setString(5,ep.getPost());
            ps.setString(6,ep.getAddress());
//            ps.setString(4,ep.getDepartment());
            ps.setString(7,ep.getPhone());
            ps.setString(8,ep.getWorkemail());
            ps.setString(9,ep.getImage());


            ps.execute();
        }catch(SQLException e){
            System.out.println("error" +e);
        }

    }

    public employee getUser(String Workemail, String Password){
        employee emp = null;
        String query = "select * from infotabel where Workemail=? and Password=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
            ps.setString(1,Workemail);
            ps.setString(2,Password);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                emp = new employee();
//                emp.setId(rs.getInt("id"));
                emp.setAbout(rs.getString("About"));
                emp.setFullname(rs.getString("Fullname"));
                emp.setPost(rs.getString("Post"));
                emp.setAddress(rs.getString("Address"));
                emp.setWorkemail(rs.getString("Workemail"));
                emp.setPhone(rs.getString("Phone"));

            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return emp;
    }

//      for storing the create task

    public void insertcreateTask(employee em) {
        String query = "insert into taskstable (name, workfile, date, time, tag, rewardPoint, instruction, stage)" + " values (?,?,?,?,?,?,?,?)";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try{
            pstm.setString(1,em.getTaskname());
            pstm.setString(2,em.getWorkfile());
            pstm.setString(3,em.getDate());
            pstm.setString(4,em.getTime());
            pstm.setString(5,em.getTag());
            pstm.setString(6,em.getRewardpoint());
            pstm.setString(7,em.getInstruction());
            pstm.setInt(8,em.getStage());
            pstm.executeUpdate();
            System.out.println(pstm);
        }
        catch(SQLException e){
            e.printStackTrace();
            System.out.println("Insert User Error : "+e);

        }

    }

    //      for storing the new members

    public void insertnewmember(employee ep) throws Exception{
        System.out.println("cat");
        String query= "insert into infotabel (About,Fullname,Password,Department,Post,Address,Phone,Workemail,Image)" + "values(?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
//            ps.setInt(1,ep.getEmployee_Id());
            ps.setString(1,ep.getAbout());
            ps.setString(2,ep.getFullname());
            ps.setString(3,ep.getPassword());
            ps.setString(4,ep.getDepartment());
            ps.setString(5,ep.getPost());
            ps.setString(6,ep.getAddress());
//            ps.setString(4,ep.getDepartment());
            ps.setString(7,ep.getPhone());
            ps.setString(8,ep.getWorkemail());
            ps.setString(9,ep.getImage());
//            ps.setString(9,ep.getImage());


            ps.execute();

        }catch(SQLException e){
            System.out.println("error" +e);
        }

    }


    public employee getUserRow(employee ep){
        employee emp = null;
        String query = "select * from infotabel where Workemail=? and Password=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1,ep.getWorkemail());
            ps.setString(2,ep.getPassword());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                emp = new employee();
                emp.setId(rs.getInt("Id"));
                emp.setAbout(rs.getString("About"));
                emp.setFullname(rs.getString("Fullname"));
                emp.setDepartment(rs.getString("Department"));
                emp.setPost(rs.getString("Post"));
                emp.setAddress(rs.getString("Address"));
                emp.setPhone(rs.getString("Phone"));
                emp.setWorkemail(rs.getString("Workemail"));
            }

        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return emp;
    }

    public List<employee>showTask(){
        List<employee> emList = new ArrayList<>();
        String query = "select * from taskstable";
        PreparedStatement ps = new DBConnection().getStatement(query);
        System.out.println("show task");
        try {
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                employee emp = new employee();
                emp.setId(rs.getInt("id"));
                emp.setTaskname(rs.getString("name"));
                emp.setDate(rs.getString("date"));
                emp.setTime(rs.getString("time"));
                emp.setRewardpoint(rs.getString("rewardPoint"));
                emp.setStage(rs.getInt("stage"));
              
                System.out.println("id "+emp.getId()+"");
                System.out.println("name "+emp.getTaskname()+"");
                System.out.println("date "+emp.getDate()+"");
                System.out.println("time "+emp.getTime()+"");
                System.out.println("rewardPoint "+emp.getRewardpoint()+"");
                emList.add(emp);
            }

        }
//        catch (SQLException ex) {
//            Logger.getLogger(userservice.class.getName()).log(Level.SEVERE, null, ex);
//        }
        catch (Exception x) {
            System.out.println("ERRX :"+x);
        }
        return emList;
    }
    
    //to show the employee list in members.jsp page
    public List<employee>showEmployee(){
        List<employee> emList = new ArrayList<>();
        String query = "select * from infotabel";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ResultSet rs = ps.executeQuery();
            int newid=1;
            while(rs.next()){
                employee emp = new employee();
                emp.setId(newid);
                emp.setEmployee_Id(rs.getInt("Id"));
                emp.setFullname(rs.getString("Fullname"));
                emp.setPost(rs.getString("Post"));
                emp.setDepartment(rs.getString("Department"));

                emList.add(emp);
                newid++;
            }
            System.out.println("emList "+emList.size());
        }
        catch (SQLException ex) {
            Logger.getLogger(userservice.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (Exception x) {
            System.out.println("ERRX :"+x);
        }
        return emList;
    }
        
        
        
//        to show the tasks details in TaskDetails.jsp 

    public employee taskdetails(int id){
        employee em= new employee();
        String query = "select * from taskstable where id=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        
        try {
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                em = new employee();
                em.setId(rs.getInt("Id"));
                em.setInstruction(rs.getString("instruction"));
                em.setTaskname(rs.getString("name"));
                em.setWorkfile(rs.getString("workfile"));
                em.setDate(rs.getString("date"));
                em.setTime(rs.getString("time"));
                em.setTag(rs.getString("tag"));
                em.setRewardpoint(rs.getString("rewardPoint"));
                em.setFeedback(rs.getString("feedback"));
                em.setReportfile(rs.getString("reportfile"));
                em.setStage(rs.getInt("stage"));
                
                System.out.println("val "+em.getId());
//System.out.println("val "+em.getInstruction());
//System.out.println("val "+em.getTaskname());
//System.out.println("val "+em.getFile());
//System.out.println("val "+em.getDate());
//System.out.println("val "+em.getTime());
//System.out.println("val "+em.getTag());
//System.out.println("val "+em.getRewardpoint());
            }
            
        } 
        catch(SQLException e){
            e.printStackTrace();
        }
        return em;
    }
    public void deleteTask(int id){
        String query = "delete from taskstable where id = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
            ps.setInt(1,id);
            ps.execute();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
    }
    
     public void addFeedback(int id,employee emp) throws SQLException{
        String query = "update taskstable set rewardPoint=?, feedback=? where id=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        ps.setString(1,emp.getRewardpoint());
        ps.setString(2,emp.getFeedback());
        ps.setInt(3,id);
        ps.execute();
    }
    public void addTaskReport(int id,employee emp) throws SQLException{
        String query = "update taskstable set reportfile=?, stage=? where id=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        ps.setString(1,emp.getReportfile());
        ps.setInt(2,emp.getStage());
        ps.setInt(3,id);
        ps.execute();
    }
     
    public static void main(String[] args) {
        userservice us = new userservice();
        employee em = new employee();
       
        us.taskdetails(15);

    }


}

