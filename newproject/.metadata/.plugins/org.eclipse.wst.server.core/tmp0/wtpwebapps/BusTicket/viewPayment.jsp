<%@page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="assests/css/1adminlogin.css">
	<link rel="stylesheet" href="assests/css/Header.css">
    <title>Payment List</title>
</head>
<body>
		<header>
            <div class="nav-bar">
                <div class="logo"><h3>Payments</h3></div>
                <div class="navigation">
                    <div class="nav-items">
<!--             			<a href="addPayment.jsp">Add Payment</a> -->
                        <a href="index.jsp">Log Out</a>
                    </div>
                </div>
            </div>
        </header>
     <h1 style="margin: 80px auto; text-align: center;">Payment List</h1>
	    <table border="1" >
	        <thead>
		        <tr>
		            <th>Payment ID</th>
		            <th>Payment Method</th>
		            <th>Name</th>
		            <th>Card Number</th>
		            <th>Expiration Date</th>
		            <th>CVC</th>
		            <th>Actions</th>
		        </tr>
		        
	        </thead>
	        <tbody>
		        <c:forEach items="${payment}" var="pay">
		            <tr>
		                <td>${pay.id}</td>
		                <td>${pay.method}</td>
		                <td>${pay.name}</td>
		                <td>${pay.cardno}</td>
		                <td>${pay.exp}</td>
		                <td>${pay.cvc}</td>
		                <td>
			                <c:url value = "updatePayment.jsp" var = "updpay">
								<c:param name="id" value = "${pay.id}"/>
								<c:param name="method" value = "${pay.method}"/>
								<c:param name="name" value = "${pay.name}"/>
								<c:param name="cardno" value = "${pay.cardno}"/>
								<c:param name="exp" value = "${pay.exp}"/>
								<c:param name="cvc" value = "${pay.cvc}"/>
							</c:url>
							<a href="${updpay}">
								<input type="submit" name="update" value="Update"  
									style="background-color: rgb(54, 59, 89); 
									color: white; 
									padding: 7px 10px; 
									border : none;
									border-radius: 5px;
									margin-right: 10px"
								>
							</a>
							
							<c:url value = "deletePayment.jsp" var = "delpay">
								<c:param name="id" value = "${pay.id}"/>
							</c:url>
							<a href="${delpay}">
								<input type="button" name="update" value="Delete"
									style="background-color: rgb(254, 100, 100); 
									color: white; 
									padding: 7px 10px; 
									border : none;
									border-radius: 5px;
									margin-right: 10px"
								>
							</a> 
		                </td>
		            </tr>
		        </c:forEach>
        	</tbody>
	    </table>
	    
	    
	    
</body>
</html>
