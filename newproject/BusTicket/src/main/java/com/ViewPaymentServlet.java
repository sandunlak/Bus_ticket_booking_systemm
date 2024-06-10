package com;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/viewPayment")
public class ViewPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		String id = request.getParameter("bid");
		
		PaymentDBUtil.Validate();
		
		try {
		List<Payment> payment = PaymentDBUtil.Validate();
		request.setAttribute("payment", payment);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("viewPayment.jsp"); //Navigate to another page
		dis.forward(request, response);
	}

}
