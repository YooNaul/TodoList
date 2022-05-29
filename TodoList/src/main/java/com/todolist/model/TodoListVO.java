package com.todolist.model;

import java.util.Date;

public class TodoListVO {
	private int idx;
	private String id;
	private String detail;
	private Date regiDate;
	private Date complDate;
	private int failStatus;
	private int challStatus;
	public int getChallStatus() {
		return challStatus;
	}
	public void setChallStatus(int challStatus) {
		this.challStatus = challStatus;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public Date getRegiDate() {
		return regiDate;
	}
	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}
	public Date getComplDate() {
		return complDate;
	}
	public void setComplDate(Date complDate) {
		this.complDate = complDate;
	}
	public int getFailStatus() {
		return failStatus;
	}
	public void setFailStatus(int failStatus) {
		this.failStatus = failStatus;
	}
	
}
