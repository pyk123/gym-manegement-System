package MyPack;

import java.util.Date;

public class User {
	private int userid;
    private String firstName;
    private String lastName;
    private Date dob;
    private String email;
    private String address;
    private Date joining;
    private Date expaire;
    public int getUserid() {
        return userid;
    }
    public void setUserid(int userid) {
        this.userid = userid;
    }
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public Date getDob() {
        return dob;
    }
    public void setDob(Date dob) {
        this.dob = dob;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getaddress() {
        return address ;
    }
    public void setaddress(String address) {
        this.address = address;
    }
    public Date getjoining() {
        return joining;
    }
    public void setjoining(Date joining) {
        this.joining =joining;
    }
    public Date getexpaire() {
        return expaire;
    }
    public void setexpaire(Date expaire) {
        this.expaire =expaire;
    }
    @Override
    public String toString() {
        return "User [userid=" + userid + ", firstName=" + firstName
                + ", lastName=" + lastName + ", dob=" + dob + ", email="
                + email + ",address="+ address
                +",joining="+joining+",expaire="+expaire+"]";
    }    
}
