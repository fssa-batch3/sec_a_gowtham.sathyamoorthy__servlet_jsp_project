package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.turbotrip.dao.UserDAO;
import com.fssa.turbotrip.dao.exception.DAOException;
import com.fssa.turbotrip.model.User;
import com.fssa.turbotrip.service.BookingService;
import com.fssa.turbotrip.service.UserService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class Loginservlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.getWriter().print("check");
	}

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User user = new User(email, password);

		PrintWriter out = response.getWriter();

		UserService userService = new UserService();
		BookingService booking = new BookingService();
		try {
			if (userService.loginUser(user)) {
				out.println("Login Successfull...");
				HttpSession session = request.getSession();
				int userId = booking.findIdByEmail(email);
				session.setAttribute("loggedInEmail", email);
				session.setAttribute("userId", userId);
				try {
					String type = UserDAO.findTypeBylicenseNumber(email);

					if ("0".equals(type)) { // Compare type as a string
						response.sendRedirect(request.getContextPath() + "/jsp/homepage.jsp");
					} else {
						response.sendRedirect(request.getContextPath() + "/jsp/DriverHomepage.jsp");
					}
				} catch (DAOException e) {
					// Handle the exception (e.g., log it or show an error message)
					response.sendRedirect(request.getContextPath() + "/jsp/loggin.jsp?errorMessage=" + e.getMessage());
				}

			}

			else {
				out.println("Invalid Login Credentials");
			}
		} catch (ServiceException e) {
			out.println(e.getMessage());
			e.printStackTrace();
			response.sendRedirect(request.getContextPath() + "/jsp/loggin.jsp?errorMessage=" + e.getMessage());
		}

	}

}
