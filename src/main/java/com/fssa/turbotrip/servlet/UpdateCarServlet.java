package com.fssa.turbotrip.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.turbotrip.dao.exception.DAOException;
import com.fssa.turbotrip.model.Car;
import com.fssa.turbotrip.service.CarService;
import com.fssa.turbotrip.service.exception.ServiceException;
import com.fssa.turbotrip.validation.exception.InvalidCarException;

/**
 * Servlet implementation class UpdateCarServlet
 */
@WebServlet("/UpdateCarServlet")
public class UpdateCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Retrieve form data
        String carModel = request.getParameter("carmodel");
        String carImage = request.getParameter("carImage");
        String carNo = request.getParameter("carNo");
        String description = request.getParameter("description");

        // Create a new Car object with the updated data
        Car updatedCar = new Car();
        updatedCar.setCarmodel(carModel);
        updatedCar.setCarImage(carImage);
        updatedCar.setCarNo(carNo);
        updatedCar.setDescription(description);

        // Update the car using your service method (e.g., updateCar)
        CarService carService = new CarService();
        try {
            boolean isUpdated = carService.updateCar(updatedCar, carNo);
            if (isUpdated) {
                response.sendRedirect("GetAllCarListServlet"); // Redirect to a success page
            } else {
                response.sendRedirect("jsp/UpdateCar1.jsp"); // Redirect to an error page
            }
        } catch (ServiceException | InvalidCarException | DAOException e) {
        	System.out.println(e.getMessage());
        	response.sendRedirect(request.getContextPath() + "/jsp/UpdateCar1.jsp?errorMessage=" + e.getMessage()); // Redirect to an error page in case of exceptions
        }
    }
}


