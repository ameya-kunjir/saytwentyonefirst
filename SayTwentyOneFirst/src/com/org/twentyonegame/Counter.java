package com.org.twentyonegame;

public class Counter {
	
	private int cntPlayerOne;
	private int cntPlayerTwo;
	private int sum;
	private String user;
	private String count;
	
	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public Counter(){
		cntPlayerOne = 1;
		cntPlayerTwo = 0;
		sum = 1;
	}
	
	public int getCntPlayerOne() {
		return cntPlayerOne;
	}
	public void setCntPlayerOne(int cntPlayerOne) {
		this.cntPlayerOne = cntPlayerOne;
	}
	public int getCntPlayerTwo() {
		return cntPlayerTwo;
	}
	public void setCntPlayerTwo(int cntPlayerTwo) {
		this.cntPlayerTwo = cntPlayerTwo;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}
	

}
