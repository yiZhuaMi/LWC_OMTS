package operator;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Order;
import model.Schedule;

/**
 * Servlet implementation class myOrder
 */
@WebServlet("/myOrder")
public class myOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		//Integer user_id = Integer.valueOf(request.getParameter("title"));
		Operator op = new Operator();
		
		ArrayList<Order> order_lsit = (ArrayList<Order>)op.searchOrder(1);
			
        HttpSession session = request.getSession();

        request.setAttribute("order_lsit", order_lsit);
		
		
			
		
		RequestDispatcher dispatcher = null;

		dispatcher = request.getRequestDispatcher("myOrder.jsp");	

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
