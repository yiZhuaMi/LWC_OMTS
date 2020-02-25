package operator;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Vector;

import javax.swing.JOptionPane;

import com.mysql.jdbc.EscapeTokenizer;
import com.sun.org.apache.regexp.internal.recompile;
import com.sun.org.apache.xerces.internal.util.EntityResolver2Wrapper;

import model.Film;
import model.Order;
import model.Schedule;
import database.DBConnection;


public class Operator<Filmlist> 
{

	private Vector<Film> Filmlist=new Vector<Film>();
	private ArrayList<Schedule> sch_lsit = new ArrayList<Schedule>();
	private ArrayList<Order> order_lsit = new ArrayList<Order>();
	
	boolean issucsess = true;
	
	public Operator() 
	{
		
	}

	public static void main(String[] args) 
	{
		
	}

	

	int count;
	
	
	
	public Vector<Film> searchFilmDisplaying()
	{
		
		Connection conn = DBConnection.getConnection();
		//Vector<Film> Filmlist = new Vector<Film>();
		
		
		try 
		{
		
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql = "select * from tb_film where playing = 1";
;
			
			

			
			ResultSet rs1 = s.executeQuery(sql);
			rs1.last();
			count = rs1.getRow();
			ResultSet rs = s.executeQuery(sql);
			
			if(rs.next())
			{	
				Film film = new Film(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), Float.parseFloat(rs.getString(9)), rs.getString(10),rs.getInt(11));
				getFilmlist().add(film);
				try 
				{
					while(rs.next())
					{	
						Film film1 = new Film(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), Float.parseFloat(rs.getString(9)), rs.getString(10),rs.getInt(11));
						getFilmlist().add(film1);
				    }
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
				
				DBConnection.closeConnection(rs, s, conn);
				
				//System.out.println("Filmlist_p已返回！");
			}
				
				

		} 
		catch (SQLException e)
		{
			
			 e.printStackTrace();
			 
			 //return empty;
			 
		}
		
		return Filmlist;

				
	}
	
	
	public Vector<Film> searchFilmIncoming()
	{
		
		Connection conn = DBConnection.getConnection();
		
		
		try 
		{
		
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql = "select * from tb_film where playing = 0";

			
			

			
			ResultSet rs1 = s.executeQuery(sql);
			rs1.last();
			count = rs1.getRow();
			ResultSet rs = s.executeQuery(sql);
			
			if(rs.next())
			{	
				Film film = new Film(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), Float.parseFloat(rs.getString(9)), rs.getString(10),rs.getInt(11));
				getFilmlist().add(film);
				try 
				{
					while(rs.next())
					{	
						Film film1 = new Film(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), Float.parseFloat(rs.getString(9)), rs.getString(10),rs.getInt(11));
						getFilmlist().add(film1);
				    }
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
				
				DBConnection.closeConnection(rs, s, conn);
				
			}
				
				//return Filmlist;
				

		} 
		catch (SQLException e)
		{
			
			 e.printStackTrace();
			 
			 //return empty;
			 
		}
		//System.out.println("Filmlist_i已返回！");
		
	

		return Filmlist;

				
	}

	
	
	
	
	
	public Vector<Film> searchFilm(String keywords)
	{

		Connection conn = DBConnection.getConnection();
		
				
		try  
		{
		
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql = "select * from tb_film where title like'%"+keywords+"%'";			

		
			ResultSet rs = s.executeQuery(sql);
			
			if(rs.next())
			{	
				Film film = new Film(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), Float.parseFloat(rs.getString(9)), rs.getString(10),rs.getInt(11));
				getFilmlist().add(film);
				try 
				{
					while(rs.next())
					{	
						Film film1 = new Film(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), Float.parseFloat(rs.getString(9)), rs.getString(10),rs.getInt(11));
						getFilmlist().add(film1);
				    }
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
				
				
			}
				
			DBConnection.closeConnection(rs, s, conn);
				
			
			
			
		
			
		} 
		catch (SQLException e)
		{
			
			 e.printStackTrace();
			 			 
		}


		return Filmlist;

		
		
		
	//	return Filmlist;
		
		
	}
	
	
	//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	public Vector<Film> search(String keywords)
	{
		
		Connection conn = DBConnection.getConnection();
		
		Vector<Film> empty = new Vector<Film>();
		Film emptyFilm = new Film(-1,"","","","","","","",Float.valueOf(-1),"",0);
		empty.add(emptyFilm);
		
		
		try 
		{
		
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql =null;
			
			if(!keywords.equals("'empty'"))
			{
				sql = "select * from tb_film where movie_id like'%"+keywords+"%' or title like'%"+keywords+"%' or tag like'%"+keywords+"%' or act like'%"+keywords+"%'  or year like'%"+keywords+"%' or dir like'%"+keywords+"%' or info like'%"+keywords+"%' or poster like'%"+keywords+"%' or price like'%"+keywords+"%' or offline_date like'%"+keywords+"%' or playing like'%"+keywords+"%'";
			}
			else
			{
				sql = "select * from tb_film ";
			}
			
			ResultSet rs1 = s.executeQuery(sql);
			rs1.last();
			count = rs1.getRow();
			ResultSet rs = s.executeQuery(sql);
			
			if(rs.next())
			{	
				Film film = new Film(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), Float.parseFloat(rs.getString(9)), rs.getString(10),rs.getInt(11));
				getFilmlist().add(film);
				try 
				{
					while(rs.next())
					{	
						Film film1= new Film(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), Float.parseFloat(rs.getString(9)), rs.getString(10),rs.getInt(11));
						getFilmlist().add(film1);
				    }
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
				
				DBConnection.closeConnection(rs, s, conn);
				
				System.out.println("Filmlist已返回！");
				
				return Filmlist;
				
			}
			else
			{
				System.out.println("墨子都没有找到！");

				DBConnection.closeConnection(rs, s, conn);
				
				issucsess = false;
				return empty;
				
			}
			
		
			
		} 
		catch (SQLException e)
		{
			
			 e.printStackTrace();
			 
			 return empty;
			 
		}
		
		
		
	//	return Filmlist;
		
		
	}
	
	
	
	
	public ArrayList<Schedule> searchSchList(Integer movie_id)
	{

		
		Connection conn = DBConnection.getConnection();
		
				
		try  
		{
		
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql = "select * from tb_schedule where movie_id = "+movie_id+" order by play_time";
		
			ResultSet rs = s.executeQuery(sql);
			
			if(rs.next())
			{	
				Schedule schedule = new Schedule(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getFloat(6));
				getSch_list().add(schedule);
				try 
				{
					while(rs.next())
					{	
						Schedule schedule1 = new Schedule(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getFloat(6));
						getSch_list().add(schedule1);
				    }
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
				
				
			}
				
			DBConnection.closeConnection(rs, s, conn);
				
			
			
			
		
			
		} 
		catch (SQLException e)
		{
			
			 e.printStackTrace();
			 			 
		}

		return sch_lsit;

		
		
		
	//	return Filmlist;
		
		
	}

	public ArrayList<Schedule> searchSch(Integer sch_id)
	{

		
		Connection conn = DBConnection.getConnection();
		
				
		try  
		{
		
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql = "select * from tb_schedule where schedule_id = "+sch_id;
		
			ResultSet rs = s.executeQuery(sql);
			
			if(rs.next())
			{	
				Schedule schedule = new Schedule(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getFloat(6));
				getSch_list().add(schedule);
				try 
				{
					while(rs.next())
					{	
						Schedule schedule1 = new Schedule(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getFloat(6));
						getSch_list().add(schedule1);
				    }
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
				
				
			}
				
			DBConnection.closeConnection(rs, s, conn);
				
			
			
			
		
			
		} 
		catch (SQLException e)
		{
			
			 e.printStackTrace();
			 			 
		}

		System.out.println(sch_lsit.get(0).Play_time());
		return sch_lsit;

		
		
		
	//	return Filmlist;
		
		
	}
	
	public String createOrder(Integer user_id,Integer schedule_id,String seat,String pay_time)
	{
		String isSucsess = "Sucsess";
		
		Connection conn = DBConnection.getConnection();
		try 
		{
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql = "insert into tb_order(user_id,schedule_id,seat,pay_time)  values('"+user_id+"','"+schedule_id+"',"
																								+ "'"+seat+"','"+pay_time+"')";
			
			s.executeUpdate(sql);
						
			
			DBConnection.closeConnection( s, conn);
		} catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		
		return isSucsess;
		
	}
	
	public ArrayList<Order> searchOrder(Integer user_id)
	{

		
		Connection conn = DBConnection.getConnection();
		
				
		try  
		{
		
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql = "select order_id,title,hall_id,seat,play_datetime,date,price from tb_order,tb_film where user_id = "+user_id+" and tb_order.movie_id = tb_film.movie_id";
			ResultSet rs = s.executeQuery(sql);
			
			if(rs.next())
			{	
				Order order = new Order(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getFloat(7));
				getOrder_list().add(order);
				try 
				{
					while(rs.next())
					{	
						Order order1 = new Order(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getFloat(7));
						getOrder_list().add(order1);
				    }
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
				
				
			}
				
			DBConnection.closeConnection(rs, s, conn);
				
			
			
			
		
			
		} 
		catch (SQLException e)
		{
			
			 e.printStackTrace();
			 			 
		}

		return order_lsit;

		
		
		
	//	return Filmlist;
		
		
	}
	
	public String searchSeatted(Integer schedule_id)
	{
		String seatted_src = "";
		
		Connection conn = DBConnection.getConnection();
		

		try  
		{
		
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql = "select seat from tb_seat where schedule_id = "+schedule_id;
		
			ResultSet rs = s.executeQuery(sql);
			
			if(rs.next())
			{	
				seatted_src = rs.getString(1);

			}
				
			DBConnection.closeConnection(rs, s, conn);
				
			

			
		
			
		} 
		catch (SQLException e)
		{
			
			 e.printStackTrace();
			 			 
		}

		
		return seatted_src;
		
	}

	public String updateSeat(String seat,Integer schedule_id)
	{
		Connection conn = DBConnection.getConnection();
		Statement s=null;
		
		String isSucsess = "yes";
		
		try 
		{
			s = conn.createStatement();
			String sql ="UPDATE tb_seat SET seat = CONCAT(seat,',"+seat+"')  WHERE schedule_id="+schedule_id;
			System.out.println(sql);
			
			
			s.executeUpdate(sql);
			System.out.println("更新座位成功!");
			
			DBConnection.closeConnection( s, conn);
			
			return isSucsess;
		} 
		catch (SQLException e)
		{
		
			e.printStackTrace();
			
			DBConnection.closeConnection( s, conn);
			
			isSucsess ="no";
			
			return isSucsess;
		}
		
		
		
		
	}
	
	public String LoginCheck(String username,String password)
	{
		String isSucsess = "Sucsess";
		Connection conn = DBConnection.getConnection();
		try 
		{
			Statement s = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			String sql = "select password from tb_user where uname = '"+username+"'";
			
			ResultSet rs1 = s.executeQuery(sql);
			
			if(rs1.next())
			{	
				
				if(password.equals(rs1.getString(1)))
				{
					System.out.println("用户匹配成功！");
				}
				else
				{
					System.out.println("密码错误！");
					
					isSucsess = "wrongpassword";
				}
				
				DBConnection.closeConnection(rs1, s, conn);
			}
			else
			{
				System.out.println("用户不存在！");
				
				isSucsess = "userdoesnotexist";
			}
			
			
			DBConnection.closeConnection( s, conn);
		} catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		
		return isSucsess;
		
	}
	
	public boolean isIssucsess() {
		return issucsess;
	}

	public void setIssucsess(boolean issucsess) {
		this.issucsess = issucsess;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}


	public static boolean add() {
		// TODO Auto-generated method stub
		return false;
	}

	public Vector<Film> getFilmlist() {
		return Filmlist;
	}

	public void setFilmlist(Vector<Film> Filmlist) {
		this.Filmlist = Filmlist;
	}
	
	public ArrayList<Schedule> getSch_list() {
		return sch_lsit;
	}

	public void setSch_list(ArrayList<Schedule> sch_lsit) {
		this.sch_lsit = sch_lsit;
	}
	
	public ArrayList<Order> getOrder_list() {
		return order_lsit;
	}

	public void setorder_list(ArrayList<Order> order_lsit) {
		this.order_lsit = order_lsit;
	}
}
