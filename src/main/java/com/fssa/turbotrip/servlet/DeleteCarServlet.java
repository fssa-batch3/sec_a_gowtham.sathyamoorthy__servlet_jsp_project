package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.turbotrip.utils.ConnectionUtil;

/**
 * Servlet implementation class DeleteCarServlet
 */
@WebServlet("/DeleteCarServlet")
public class DeleteCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCarServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		// Retrieve the product ID from the request parameter
		String productId = request.getParameter("id");
		System.out.print(productId);
		PrintWriter out = response.getWriter();

		int product_id = Integer.parseInt(productId);

		String updateQuery = "UPDATE car_list SET is_deleted = true WHERE car_id = ?";

		try {
			// Get connection
			Connection connection = ConnectionUtil.getConnection();

			// Prepare SQL statement
			PreparedStatement statement = connection.prepareStatement(updateQuery);
			statement.setInt(1, product_id);

			// Execute the query
			int rows = statement.executeUpdate();

			statement.close();
			connection.close();

			// Return successful or not
			response.sendRedirect("GetAllCarListServlet");

			return;
		} catch (Exception e) {
			e.printStackTrace();
			out.println("Error: " + e.getMessage());
		}

	}

}
