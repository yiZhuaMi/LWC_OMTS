package model;

import java.io.Serializable;

public class Film implements Serializable
{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public Integer movie_id;
	public String title;
	public String tag;
	public String act;
	public String year;
	public String dir;
	public String info;
	public String poster;
	public float price;	
	public String offline_date;
	public Integer playing;




	
	public Film(Integer movie_id,String title,String tag,String act,String year,String dir,String info,String poster,float price,String offline_date,Integer playing) 
	{
		this.movie_id=movie_id;
		this.title=title;
		this.tag=tag;
		this.act=act;
		this.year=year;
		this.dir=dir;
		this.info=info;
		this.poster=poster;
		this.price=price;
		this.offline_date=offline_date;
		this.playing=playing;
		
	}

	public String gettag() {
		return tag;
	}

	public void settag(String tag) {
		this.tag = tag;
	}

	public String getact() {
		return act;
	}

	public void setact(String act) {
		this.act = act;
	}

	public String getyear() {
		return year;
	}

	public void setyear(String year) {
		this.year = year;
	}

	public String getdir() {
		return dir;
	}

	public void setdir(String dir) {
		this.dir = dir;
	}

	public String getinfo() {
		return info;
	}

	public void setinfo(String info) {
		this.info = info;
	}
	
	public String getposter() {
		return poster;
	}

	public void setposter(String poster) {
		this.poster = poster;
	}
	
	public float getprice() {
		return price;
	}

	public void setprice(Integer price) {
		this.price = price;
	}
	
	public String getoffline_date() {
		return offline_date;
	}

	public void setoffline_date(String offline_date) {
		this.offline_date = offline_date;
	}

	public Integer getplaying() {
		return playing;
	}

	public void setplaying(Integer playing) {
		this.playing = playing;
	}

//	public Film(int Filmid, String tag, String act,Float year, String area, String dir) {
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
