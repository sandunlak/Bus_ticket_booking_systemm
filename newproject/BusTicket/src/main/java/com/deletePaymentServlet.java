package com;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.PaymentDBUtil;

@WebServlet("/deletePayment")

public class deletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id =  request.getParameter("id");
		
		boolean isTrue = PaymentDBUtil.deletePayment(id);
				
		if(isTrue == true){

			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
			
		}else {
		}
		
		
	}

}
