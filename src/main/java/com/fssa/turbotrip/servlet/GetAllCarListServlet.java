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

import com.fssa.turbotrip.model.Car;
import com.fssa.turbotrip.service.CarService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class GetAllCarListServlet
 */
@WebServlet("/GetAllCarListServlet")
public class GetAllCarListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");

List<Car> cars = null;
		CarService carservice = new CarService();
		try {
			int id = carservice.findIdByEmail(loggedInEmail);

			cars = carservice.getAllCarlists(id);
			session.setAttribute("cars", cars);
			
			RequestDispatcher dispatcher =request.getRequestDispatcher("jsp/display_all_car.jsp");
			dispatcher.forward(request, response);
			
		}catch(ServiceException e) {
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

	
	
}
