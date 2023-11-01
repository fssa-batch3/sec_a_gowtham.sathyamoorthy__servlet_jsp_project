package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.turbotrip.service.BookingService;
import com.fssa.turbotrip.service.UserService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class AcceptBookingServlet
 */
@WebServlet("/AcceptBookingServlet")
public class AcceptBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int booking_id =Integer.parseInt( request.getParameter("id"));
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
		
	String Status = "True";
	BookingService bookingService = new BookingService();
	
	int otpLength = 6; // Length of the OTP
    String generatedOTP = generateOTP(otpLength);
    
	try {
		bookingService.AcceptBooking(booking_id, id,generatedOTP);
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/VerifyOtpindriver.jsp");
		dispatcher.forward(request, response);
	  //  response.sendRedirect(servletPath);
	} catch(ServiceException e){
		e.printStackTrace();
	}
		
		
	//	doGet(request, response);
	}
	
    // Method to generate a random OTP of the specified length
    public static String generateOTP(int length) {
        // Define the characters to include in the OTP
        String characters = "0123456789";

        
        Random random = new Random();

       
        StringBuilder otp = new StringBuilder();

       
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            char digit = characters.charAt(index);
            otp.append(digit);
        }

        return otp.toString();
    }

}
