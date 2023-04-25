package model;
public class employee {
    private int Employee_Id=0, Id=0;
    private String Fullname = "", Workemail = "", Password = "", Department = "", Post = "", Address = "", About = "", Image = "", phone="";

    private String taskname="";
    private String file="";
    private String workfile="";
    private String reportfile="";
    private String instruction="";
    private String tag="";
    private String date="";
    private String time="";
    private String rewardpoint="";
    private String feedback="";
    private int stage = 1;

    public int getEmployee_Id() {
        return Employee_Id;
    }

    public void setEmployee_Id(int Employee_Id) {
        this.Employee_Id = Employee_Id;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    public String getWorkemail() {
        return Workemail;
    }

    public void setWorkemail(String Workemail) {
        this.Workemail = Workemail;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String Department) {
        this.Department = Department;
    }

    public String getPost() {
        return Post;
    }

    public void setPost(String Post) {
        this.Post = Post;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getAbout() {
        return About;
    }

    public void setAbout(String About) {
        this.About = About;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTaskname() {
        return taskname;
    }

    public void setTaskname(String taskname) {
        this.taskname = taskname;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public String getWorkfile() {
        return workfile;
    }

    public void setWorkfile(String workfile) {
        this.workfile = workfile;
    }

    public String getReportfile() {
        return reportfile;
    }

    public void setReportfile(String reportfile) {
        this.reportfile = reportfile;
    }

    public String getInstruction() {
        return instruction;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getRewardpoint() {
        return rewardpoint;
    }

    public void setRewardpoint(String rewardpoint) {
        this.rewardpoint = rewardpoint;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public int getStage() {
        return stage;
    }

    public void setStage(int stage) {
        this.stage = stage;
    }
}
