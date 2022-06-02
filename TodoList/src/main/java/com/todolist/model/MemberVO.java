package com.todolist.model;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private int idx;
	private String id;
	private String name;
	private String pass;
	private int sex;
	private String email;
	private int status;
	private int ranking;
	private Date joinDate;
	@Override
	public String toString() {
		return "MemberVO [idx=" + idx + ", id=" + id + ", name=" + name + ", pass=" + pass + ", sex=" + sex + ", email="
				+ email + ", status=" + status + ", ranking=" + ranking + "]";
	}
	
}

