package newpackage;
import java.util.*;


  public class Employee {
    String fname;
    String lname;
    String hireDate;
    double salary;

    public Employee(String fname, String lname, String hireDate, double salary) {
        this.fname = fname;
        this.lname = lname;
        this.hireDate = hireDate;
        this.salary = salary;
    }

    // Getters and setters
    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getHireDate() {
        return hireDate;
    }

    public void setHireDate(String hireDate) {
        this.hireDate = hireDate;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
       
        return fname + " " + lname + " " + hireDate + " " + salary;
    }
}
