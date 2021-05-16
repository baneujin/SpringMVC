package net.developia.mvc.models;

import java.io.Serializable;

import lombok.Data;


@Data
public class MessageDTO implements Serializable{

	private String id;
	private String sendid;
	private String content;
	private String senddate;
	
	
}
