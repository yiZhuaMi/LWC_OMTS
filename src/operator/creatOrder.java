package operator;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import model.Schedule;

/**
 * Servlet implementation class creatOrder
 */
@WebServlet("/creatOrder")
public class creatOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public creatOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Integer schedule_id = Integer.parseInt(request.getParameter("schedule_id"));
		
		String seat = request.getParameter("seat");
		
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String pay_time=format.format(date);
		 
		HttpSession session = request.getSession();

        //Integer user_id = (Integer)session.getAttribute("user_id");
		
		Operator op = new Operator();
		
		//用户编号暂时是假的
		op.createOrder(00000000001,schedule_id,seat,pay_time);
		
		op.updateSeat(seat,schedule_id);
		
		//request.setAttribute("sch_lsit", sch_lsit);
		
		
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");	
		 
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
