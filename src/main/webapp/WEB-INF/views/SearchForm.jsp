<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Customer Management System</title>
<meta name="viewport" content="width=device-width" charset="UTF-8">
<style>
body {
font-family: "Roboto", sans-serif;
background-image: url("https://st2.depositphotos.com/7752738/11353/v/450/depositphotos_113539176-stock-illustration-crm-vector-icon-customer-relationship.jpg");
background-size:50%;
background-repeat:no-repeat;
background-position: top;
}
header {
background-color:green;
padding: 2px;
text-align: center;
font-size: 15px;
color: white;
}
section {
float: inherit;
width: inherit;
height: 50px; 
background:black;
padding: 5px;
text-align: center;
}
button{
border-width:5px;
border-style:double;
border-color:green;
padding: 5px;
text-align: center;
margin-bottom:inherit;
margin-top: inherit; 
}
footer {
background-color:gray;
padding: 2px;
text-align: center;
font-size: 10px;
color: white;
}
input[type=text], select {
  width: 25%;
  height: 30px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  position: inherit;
  margin-left: 1%;
}
label{
  padding: 10px;
  color: black;
  font-size: large;
  font-weight: bold;
  display: inline;
}
fieldset{
  padding: 10px;
  color: black;
  width: inherit;
}
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  align-content: center;
  text-align: center;
}
table td,table th {
  border: 1px solid #ddd;
  padding: 8px;
}
table tr:nth-child(even){background-color: #ccffcc;}
table tr:nth-child(odd){background-color: #e6ffff;}
table tr:hover {background-color: #ddd;}
table th {
  padding-top: 5px;
  padding-bottom: 5px;
  text-align: center;
  background-color: #04AA6D;
  color: white;
}
li{
display:inline-block;
text-align: center;
margin-left: 10%;
margin-right: 10%;
margin-top: -2%;
}
</style>
</head>
<body>
<header>
<h1>CUSTOMER MANAGEMENT SYSTEM</h1>
</header>
<section>
<nav>
    <ul>
      <li><a href="/CustomerManagement/"><button>HomePage</button></a></li>
      <li><a href="showForm"><button>Register New Customer</button></a></li>
      <li><a href="searchForm"><button>Search Old Customer</button></a></li>
    </ul>
  </nav>
</section>
<form action="/CustomerManagement/searchRecord" class="" style="align-items: center;">
<fieldset>
<legend>Database of Registered Students</legend>
<label>SEARCH CUSTOMER'S RECORDS BY ANY PARAMETERS REQUIERED - </label>
<br>
<br>
<label>BY ID         :</label>
<input type="search" name="id" value="id" placeholder="Enter Customer ID"/><br><br>
<label>BY FIRST NAME :</label>
<input type="search" name="firstName" value="firstName" placeholder="Enter First Name"/><br><br>
<label>BY LAST NAME  :</label>
<input type="search" name="lastName" value="lastName" placeholder="Enter Last Name"/><br><br>
<label>BY EMAIL_ID   :</label>
<input type="search" name="emailId" value="emailId" placeholder="Enter Email Id"/><br><br>
<br>
<button type="submit">Search Records</button>
<br>
<br>
</fieldset>
</form>
<table border="1" style="color:green; font-size-adjust: inherit;font-weight: bold;border-style: solid;">
  <thead class="thead-dark">
    <tr>
      <th>Customer-Id</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Email-Id</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${Customers}" var="tempCustomer">
      <tr>
        <td><c:out value="${tempCustomer.id}" /></td>
        <td><c:out value="${tempCustomer.firstName}" /></td>
        <td><c:out value="${tempCustomer.lastName}" /></td>
        <td><c:out value="${tempCustomer.emailId}" /></td>
        <td>
          <a href="/CustomerManagement/updateRecord?id=${tempCustomer.id}"><button>UPDATE</button></a>
          <a href="/CustomerManagement/deleteRecord?id=${tempCustomer.id}"onclick="if(!(confirm('Are you sure you want to delete the record ?')))return false"><button>DELETE</button></a>
        </td>
      </tr>
   </c:forEach>
  </tbody>
</table>
<footer>
<h1>CUSTOMER RELATIONSHIP MANAGER</h1>
</footer>
</body>
</html>