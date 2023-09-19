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
        String license_number = request.getParameter("license");
		PrintWriter out = response.getWriter();
		out.print("post");
		User user1 = new User(name, email, phone, password, 0,license_number );
		DriverService userService = new DriverService();

		try {
			if (userService.registerUser(user1)) {
				System.out.println("Registration successful!");
				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/loggin.jsp");
				dispatcher.forward(request, response);
			}

		} catch (ServiceException e) {

			request.setAttribute("name", name);
			request.setAttribute("email", email);
			request.setAttribute("phone", phone);
			request.setAttribute("password", password);
			System.out.println("Registration unsuccessful!");
			request.setAttribute("errorMessage", "Create Register Failed: " + e.getMessage());
			request.getRequestDispatcher("jsp/register.jsp").forward(request, response);

		}

	}


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}

}
