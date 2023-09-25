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

import com.fssa.turbotrip.model.Car;
import com.fssa.turbotrip.service.CarService;
import com.fssa.turbotrip.service.DriverService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class CarRegister
 */
@WebServlet("/CarRegister")
public class CarRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		 String userEmail = (String) session.getAttribute("loggedInEmail");
		 int userId = 0;
		    DriverService service = new DriverService();
		    try {
				userId = service.findIdByEmail(userEmail);
			} catch (ServiceException e) {
			
				e.printStackTrace();
			}
		String Image = request.getParameter("ca_r");
		String reg_no = request.getParameter("ca_r1");
		String Model = request.getParameter("ca_r2");
		String Description = request.getParameter("ca_r3");
		PrintWriter out = response.getWriter();
		Car car = new Car(userId,reg_no,Model,Image,Description);
		CarService carService = new CarService();

		try {
			if (carService.createCar(car)) {
				out.println("Car Registration successful!");
				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/listcar.jsp");
				dispatcher.forward(request, response);
			}
			else {
				out.println("Car Registration failed!");
				response.sendRedirect("CreateCar.jsp");
			}
		} catch (ServiceException e) {
			e.printStackTrace();
			out.println(e.getMessage());
			response.sendRedirect(request.getContextPath() + "/jsp/Createcar.jsp?errorMessage=" + e.getMessage());

			}
		} 

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
		
	}

}
