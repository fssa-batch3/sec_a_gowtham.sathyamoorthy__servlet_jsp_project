package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.turbotrip.model.User;
import com.fssa.turbotrip.service.UserService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class LoginServlet
 * 
 * @author GowthamKrishnaSathya
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");

		PrintWriter out = response.getWriter();
		User user1 = new User(name, email,phone, password, 0, false);
		UserService userService = new UserService();

		try {
			if (userService.registerUser(user1)) {
				out.println("Registration successful!");
				RequestDispatcher dispatcher = request.getRequestDispatcher("loggin.jsp");
				dispatcher.forward(request, response);
			}
		} catch (ServiceException e) {
			
			out.print("Invalid Details");

			((PrintWriter) response).print("register.jsp? Invalid login Credentials");

			out.println(e.getMessage());

			out.println("Registration failed!");
//			RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
//			dispatcher.forward(request, response);

		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}

}