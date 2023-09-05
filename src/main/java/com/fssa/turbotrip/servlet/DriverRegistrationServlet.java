package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.turbotrip.model.Driver;
import com.fssa.turbotrip.model.User;
import com.fssa.turbotrip.service.DriverService;
import com.fssa.turbotrip.service.UserService;
import com.fssa.turbotrip.service.exception.ServiceException;
import com.fssa.turbotrip.validation.exception.InvalidDriverException;

/**
 * Servlet implementation class DriverRegistrationServlet
 */
@WebServlet("/DriverRegistrationServlet")
public class DriverRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");


		

		PrintWriter out = response.getWriter();
		User user1 = new User(name, email,phone, password, 0, true);
		Driver driver = new Driver( 987654321234L, null, 2);
		UserService userService = new UserService();
		DriverService driverService = new DriverService();
		try {
			if (userService.registerUser(user1)) {
				out.println("Driver Registration successful!");
				RequestDispatcher dispatcher = request.getRequestDispatcher("driver_login.jsp");
				dispatcher.forward(request, response);
				out.println("Driver Registration failed!");

			} else {
				out.print("failed");
			}
		} catch (ServiceException e) {
			
			out.print("Invalid Details");

			((PrintWriter) response).print("driver_register.jsp? Invalid login Credentials");

			out.println(e.getMessage());

			out.println("Driver Registration failed!");
//			RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
//			dispatcher.forward(request, response);

		} 

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}

}
