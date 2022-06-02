package com.todolist.model;

import java.sql.Array;
import java.util.Date;

import lombok.Data;

@Data
public class TodoListVO {
	private int idx;
	private String id;
	private String detail;
	private Date regiDate;
	private Date complDate;
	private int failStatus;
	private int challStatus;
}
