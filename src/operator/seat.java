package operator;

import java.io.IOException;
import model.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class seat
 */
@WebServlet("/seat")
public class seat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public seat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Integer schedule_id = Integer.parseInt(request.getParameter("sid"));
		
		Operator operator = new Operator<>();
		
		Schedule result_sch = (Schedule)operator.searchSch(schedule_id).get(0);
		
		
		
		String seatted_src = operator.searchSeatted(schedule_id);

		String []seattedArray = seatted_src.split(",");

		String result_seatsrc = "[";
		
		for (int i=0;i<seattedArray.length;i++) 
		{
			if(i!=seattedArray.length-1)
			{
				result_seatsrc = result_seatsrc+"'"+seattedArray[i]+"',";
			}
			else
			{
				result_seatsrc = result_seatsrc+"'"+seattedArray[i]+"']";
			}
		}		
		
		
		
		request.setAttribute("result_sch", result_sch);
	
		request.setAttribute("result_seatsrc", result_seatsrc);
		
		
		
		RequestDispatcher dispatcher = null;

		dispatcher = request.getRequestDispatcher("seat.jsp");	

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
