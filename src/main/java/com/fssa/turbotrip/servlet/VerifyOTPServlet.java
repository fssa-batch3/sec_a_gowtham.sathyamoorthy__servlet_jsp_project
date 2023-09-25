package com.fssa.turbotrip.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.turbotrip.service.BookingService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class VerifyOTPServlet
 */
@WebServlet("/VerifyOTPServlet")
public class VerifyOTPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String otp = request.getParameter("otp");
		HttpSession session = request.getSession(false);
		int userId = (int) session.getAttribute("userId");
		BookingService booking = new BookingService();
		try {
			String otpretrived = booking.findObjectBydriverIds(userId);
			
			System.out.println("otp initiated");
			
			System.out.println(otpretrived);
			System.out.println(otp);
			
			String msg = "Otp Verified";
			
			if(otp.equals(otpretrived)) {
				System.out.println("otp confirmed equals");
				request.setAttribute("msg", msg);
				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/ConfrimBooking.jsp");
				dispatcher.forward(request, response);
			}
			
		} catch (ServiceException e) {
			e.printStackTrace();
			
		}
	}

}
