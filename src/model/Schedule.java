package model;

public class Schedule {
	
	private Integer schedule_id;
	
    private Integer movie_id;
    
    private Integer hall_id;
    
    private String play_date;

    private String play_time;

    private float price;

//    public Schedule(){
//        
//    }
    
    public Schedule(Integer schedule_id, Integer movie_id, Integer hall_id, String play_date, String play_time ,float price) 
    {
        //super();
        this.schedule_id = schedule_id;
        this.movie_id = movie_id;
        this.hall_id = hall_id;
        this.play_date = play_date;
        this.play_time = play_time;
        this.price = price;
    }
    
    public Integer Schedule_id() {
        return schedule_id;
    }

    public void setSchedule_id(Integer schedule_id) {
        this.schedule_id = schedule_id;
    }
    
    public Integer Movie_id() {
        return movie_id;
    }

    public void setMovie_id(Integer movie_id) {
        this.movie_id = movie_id;
    }

    public Integer Hall_id() {
        return hall_id;
    }

    public void setHall_id(Integer hall_id) {
        this.hall_id = hall_id;
    }
    
    public String Play_date() {
        return play_date;
    }

    public void setPlay_date(String play_date) {
        this.play_date = play_date;
    }

    public String Play_time() {
        return play_time;
    }

    public void setPlay_time(String play_time) {
        this.play_time = play_time;
    }
    
    public Float Price() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    
    
}