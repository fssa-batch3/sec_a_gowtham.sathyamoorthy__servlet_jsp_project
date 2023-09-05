package com.fssa.turbotrip.servlet;

public class Moive {
	private int movieId;
	private String movieName;
	private String movieTime;
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getMovieTime() {
		return movieTime;
	}
	public void setMovieTime(String movieTime) {
		this.movieTime = movieTime;
	}
	public Moive(int movieId, String movieName, String movieTime) {
		super();
		this.movieId = movieId;
		this.movieName = movieName;
		this.movieTime = movieTime;
	}

}
