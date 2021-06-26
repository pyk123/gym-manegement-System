package userpack;

public class registration {
	private String fullname;
    private String email;
    private String addr;
    private int age;
    private int number1;
    public String getfullname() {
        return fullname;
    }
    public void setfullname(String fullname) {
        this.fullname = fullname;
    }
    
    public String getemail() {
        return email;
    }
    public void setemail(String email) {
        this.email = email;
    }
    
    public String getaddr() {
        return addr;
    }
    public void setaddr(String addr) {
        this.addr = addr;
    }
    
    public int getage() {
        return age;
    }
    public void setage(int age) {
        this.age = age;
    }
    
    public int getnumber1() {
        return number1;
    }
    public void setnumber1(int number1) {
        this.number1 = number1;
    }
    @Override
    public String toString() {
        return "registration [fullname=" +fullname + ", email=" + email
                + ",addr=" + addr + ", age=" + age + ", number1="
                + number1+ "]";
    }    

}
