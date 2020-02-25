package operator;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Film;
/**
 * Servlet implementation class filmInfo
 */
@WebServlet("/filmInfo")
public class filmInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public filmInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		


		String keyName = request.getParameter("title");
		Operator op = new Operator();
		
	    Film result_film = (Film)op.searchFilm(keyName).get(0);
				
		//request.setAttribute("result_film", result_film);
        HttpSession session = request.getSession();

        session.setAttribute("result_film", result_film);
		
		
			
		
		RequestDispatcher dispatcher = null;

		dispatcher = request.getRequestDispatcher("index.jsp");	

		dispatcher.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
