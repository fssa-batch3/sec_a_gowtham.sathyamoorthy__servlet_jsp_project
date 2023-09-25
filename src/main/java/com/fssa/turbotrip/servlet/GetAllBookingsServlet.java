package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.turbotrip.model.Booking;
import com.fssa.turbotrip.service.BookingService;
import com.fssa.turbotrip.service.UserService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class GetAllBookings
 */
@WebServlet("/GetAllBookings")
public class GetAllBookingsServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Booking> book = null;
		BookingService bookservice = new BookingService();
		try {

			book = bookservice.getAllbooking();
			
			
			System.out.println(book);

			
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("book", book);

		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/display_all_booking.jsp");

		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
