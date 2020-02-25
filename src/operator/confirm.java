package operator;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Schedule;

/**
 * Servlet implementation class confirm
 */
@WebServlet("/confirm")
public class confirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public confirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		Integer schedule_id = Integer.parseInt(request.getParameter("sid"));
		
		String selectticket_data = String.valueOf(request.getParameter("selectticket_data"));
		
		Operator op = new Operator();

		Schedule schedule = (Schedule)op.searchSch(schedule_id).get(0);
		
		
		request.setAttribute("result_schedule", schedule);
		
		request.setAttribute("selectticket_data", selectticket_data);
		
		
		
		
		
		
		RequestDispatcher dispatcher = null;

		dispatcher = request.getRequestDispatcher("confirm.jsp");	

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
