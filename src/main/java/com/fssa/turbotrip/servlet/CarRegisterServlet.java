package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.turbotrip.model.Car;
import com.fssa.turbotrip.service.CarService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class CarRegister
 */
@WebServlet("/CarRegister")
public class CarRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String Image = request.getParameter("ca_r");
		String reg_no = request.getParameter("ca_r1");
		String Model = request.getParameter("ca_r2");
		String Description = request.getParameter("ca_r3");
		PrintWriter out = response.getWriter();
		Car car = new Car(1,reg_no,Model,Image,Description);
		CarService carService = new CarService();

		try {
			if (carService.createCar(car)) {
				out.println("Car Registration successful!");
				RequestDispatcher dispatcher = request.getRequestDispatcher("listcar.jsp");
				dispatcher.forward(request, response);
			}
			else {
				out.println("Car Registration failed!");
				response.sendRedirect("AttachCar.jsp");
			}
		} catch (ServiceException e) {
			e.printStackTrace();
			out.println(e.getMessage());
			}
		}

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
		
	}

}
