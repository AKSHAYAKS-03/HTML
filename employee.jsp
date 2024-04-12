<%@ page import="java.util.ArrayList" %>
<%@ page import="newpackage.Employee" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Information</title>
    <style>
        body{
            margin-left: 500px;
        }
    </style>
</head>
<body>
    <h1>Employee Information</h1>
    <table border="1">
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Hire Date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <% 
            ArrayList<Employee> al = new ArrayList<Employee>();
            al.add(new Employee("Bob", "Johnson", "2019-05-01", 70000.00));
            al.add(new Employee("John", "Doe", "2020-01-01", 50000.0));
            Employee e =  new Employee("Jane", "Smith", "2021-02-15", 60000.0);
            al.add(e);
            
            pageContext.setAttribute("emp", al);
           pageContext.setAttribute("emp1", al);

            %>
            
            <c:forEach var="emp" items="${pageScope.emp}" varStatus="status">
                <tr>
                    <td>${emp.fname}</td>
                    <td>${emp.lname}</td>
                    <td>${emp.hireDate}</td>
                    <td>${emp.salary}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <h2>Employees with Salary > 60000</h2>
    <table border="1">
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Hire Date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="emp1" items="${pageScope.emp1}" varStatus="status">
                <c:if test="${emp1.salary > 60000.0}">
                    <tr>
                        <td>${emp1.fname}</td>
                        <td>${emp1.lname}</td>
                        <td>${emp1.hireDate}</td>
                        <td>${emp1.salary}</td>
                    </tr>
                </c:if>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
