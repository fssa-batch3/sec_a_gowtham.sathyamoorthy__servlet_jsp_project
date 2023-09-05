package com.fssa.turbotrip.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;

/**
 * Servlet implementation class MoiveServlet
 */
@WebServlet("/MoiveServlet")
public class MoiveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	public class MovieServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public MovieServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			List<Moive> movies = new ArrayList<>();
			
			Moive mov1 = new Moive(1,"Leo","18:00");
			Moive mov2 = new Moive(2,"Leo","21:00");
			Moive mov3 = new Moive(3,"Leo","09:00");
			Moive mov4 = new Moive(4,"Jailer","18:00");
			Moive mov5 = new Moive(5,"Indian","18:00");
			
			String movieName = request.getParameter("movieName");
			
			if(movieName.equals(mov1.getMovieName())) {
				movies.add(mov1);
			}
			if(movieName.equals(mov2.getMovieName())) {
				movies.add(mov2);
			}
			if(movieName.equals(mov3.getMovieName())) {
				movies.add(mov3);
			}
			if(movieName.equals(mov4.getMovieName())) {
				movies.add(mov4);
			}
			if (movieName.equals(mov5.getMovieName())) {
				movies.add(mov5);
			}
			
			JSONArray accountsJSonArray = new JSONArray(movies);
			PrintWriter out = response.getWriter();
			out.println(accountsJSonArray.toString());
			out.flush();
			
		}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	}
}
