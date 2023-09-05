package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;

import com.fssa.turbotrip.model.*;

/**
 * Servlet implementation class GetCarListJSONServlet
 */
@WebServlet("/GetCarListJSONServlet")
public class GetCarListJSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Car car = new Car(1,"TN 08 CD 0099", "Car",
				"https://media.istockphoto.com/id/495605964/photo/generic-compact-red-car.jpg?s=612x612&w=0&k=20&c=eElEDukSWi6HsUPXflSebpUm7j9tPNq7WvFOGIlqgeA=",
				"it is five seater ");
		
		JSONObject accountJson = new JSONObject(car);
		PrintWriter out = response.getWriter();
		out.println(accountJson.toString());
		out.flush();
		}
	
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
