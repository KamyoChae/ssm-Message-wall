package com.ssm.beans;

import java.util.Date;

public class Information {
	private Integer id;
	private String username;
	private String context;
	private Date time;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "Information [id=" + id + ", username=" + username + ", context=" + context + ", time=" + time + "]";
	}

}
