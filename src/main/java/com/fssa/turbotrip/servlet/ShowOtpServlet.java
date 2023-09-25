package com.fssa.turbotrip.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.turbotrip.model.Booking;
import com.fssa.turbotrip.model.User;
import com.fssa.turbotrip.service.BookingService;
import com.fssa.turbotrip.service.UserService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class ShowOtpServlet
 */
@WebServlet("/ShowOtpServlet")
public class ShowOtpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		int loggedInuserId = (int) session.getAttribute("userId");
		System.out.println("otp no1 : " + loggedInuserId);
		BookingService booking = new BookingService();
		UserService user = new UserService();	
		try {
			Booking book = booking.findObjectByUserIds(loggedInuserId);
			User users = user.getUserById(book.getDriver_id());
			System.out.println(book);
			System.out.println(users);
			request.setAttribute("otp", book.getOtp());
			request.setAttribute("driver", users);
			RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/NotificationForUser.jsp");
			dispatcher.forward(request, response);
			
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
	}

}
