package model;

import java.io.Serializable;

public class Order implements Serializable
{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public Integer order_id;
	public String title;
	public float price;	
	public String hall;
	public String seat;
	public String play_datetime;
	public String play_date;



	
	public Order(Integer order_id,String title,String hall,String seat,String play_datetime,String play_date,float price) 
	{
		this.order_id=order_id;
		this.title=title;
		this.hall=hall;
		this.seat=seat;
		this.play_datetime=play_datetime;
		this.play_date=play_date;
		this.price=price;

		
	}

	
	public String title() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
	}
	
	public String play_datetime() {
		return play_datetime;
	}

	public void setplay_datetime(String play_datetime) {
		this.play_datetime = play_datetime;
	}
	
	public float price() {
		return price;
	}

	public void setprice(Integer price) {
		this.price = price;
	}
	
	public String hall() {
		return hall;
	}

	public void sethall(String hall) {
		this.hall = hall;
	}
	
	public String seat() {
		return seat;
	}

	public void setseat(String seat) {
		this.seat = seat;
	}

	public String play_date() {
		return play_date;
	}

	public void setplay_date(String play_date) {
		this.play_date = play_date;
	}
	

//	public Order(int Orderid, String tag, String act,Float year, String area, String dir) {
//		this.tag=tag;
//		this.act=act;
//		this.year=year;
//		this.area=area;
//		this.dir=dir;
//	}

	public static void main(String[] args)
	{
		// TODO Auto-generated method stub

	}

}
