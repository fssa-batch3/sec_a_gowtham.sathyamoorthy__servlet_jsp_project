package com.fssa.turbotrip.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.turbotrip.dao.exception.DAOException;
import com.fssa.turbotrip.utils.ConnectionUtil;

/**
 * Servlet implementation class CancelRideServlet
 */
@WebServlet("/cancelride")
public class CancelRideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    int bookingId = Integer.parseInt(request.getParameter("bookingid"));
	    
	    System.out.print(bookingId);
	    
	    Connection connection = null;
	    PreparedStatement pst = null;
	    int rows = 0;

	    try {
	        connection = ConnectionUtil.getConnection();
	        String deleteQuery = "DELETE FROM booking WHERE booking_id = ?";
	        pst = connection.prepareStatement(deleteQuery);
	        pst.setInt(1, bookingId);
	        rows = pst.executeUpdate();
	    } catch (SQLException e) {
	        System.out.println(e.getMessage());
	    } finally {
	        try {
	            if (pst != null) {
	                pst.close();
	            }
	            if (connection != null) {
	                connection.close();
	            }
	        } catch (SQLException e) {
	            System.out.println(e.getMessage());
	        }
	    }
	    
	    response.sendRedirect("/turbotripweb/jsp/carpool.jsp");
	}


}
