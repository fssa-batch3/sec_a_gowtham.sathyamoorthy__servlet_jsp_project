package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.turbotrip.model.Car;
import com.fssa.turbotrip.service.CarService;
import com.fssa.turbotrip.service.exception.ServiceException;

/**
 * Servlet implementation class GetAllCarListJSONServlet
 */
@WebServlet("/GetAllCarListJSONServlet")
public class GetAllCarListJSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Car> cars = null;
		CarService carservice = new CarService();
		try {
			cars = carservice.getAllCarlists();
			
		}catch(ServiceException e) {
			e.printStackTrace();
		}
		JSONArray accountsJSonArray = new JSONArray(cars);
		PrintWriter out = response.getWriter();
		out.println(accountsJSonArray.toString());
		out.flush();
		
	}

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}


}
