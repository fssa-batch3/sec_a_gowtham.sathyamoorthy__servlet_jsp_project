package com.fssa.turbotrip.servlet;

import java.io.IOException;

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
 * Servlet implementation class CreateBookingServlet
 */
@WebServlet("/CreateBookingServlet")
public class CreateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pickupLocation = request.getParameter("pickup");
		String dropLocation = request.getParameter("drop");
		String bookingDate = request.getParameter("date");
		String bookingTime = request.getParameter("time");
		int seat = Integer.parseInt(request.getParameter("seating"));
		System.out.println(seat);
		UserService service = new UserService();
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("loggedInEmail");
		int id = 0;
		try {
			id = service.findIdByEmail(email);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.print(id);

		BookingService bookService = new BookingService();

		Booking book = new Booking();
		book.setUser_id(id);
		book.setPickup_location(pickupLocation);
		book.setDrop_location(dropLocation);
		book.setBooking_time(bookingTime);
		book.setBooking_date(bookingDate);
		book.setNo_of_seat(seat);

		// Create the booking using your service method (e.g., createBooking)

		boolean isCreated = false;
		try {
			isCreated = bookService.createBooking(book);
		} catch (ServiceException e) {

			e.printStackTrace();
		}
		if (isCreated) {
			response.sendRedirect("jsp/testing.jsp");
		} else {
			response.sendRedirect("jsp/carpool.jsp"); // Redirect to an error page
		}
	}
}