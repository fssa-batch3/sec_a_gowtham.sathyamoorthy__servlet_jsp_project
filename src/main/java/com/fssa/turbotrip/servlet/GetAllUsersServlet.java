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

import com.fssa.turbotrip.model.User;
import com.fssa.turbotrip.service.UserService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class GetAllUsersServlet
 */
@WebServlet("/GetAllUsersServlet")
public class GetAllUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> users = null;
		UserService userService = new UserService();
		try {
			users = userService.getAllUserLists();
		} catch (ServiceException e) {
		e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("users", users);
		RequestDispatcher dispatcher = request.getRequestDispatcher("display_all_users.jsp");
		dispatcher.forward(request, response);
//		request.setAttribute("users", users);
//		request.getRequestDispatcher("display_all_users.jsp").forward(request, response);
		
	}

 	@Override
 	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
