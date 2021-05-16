package net.developia.mvc.models;

import java.io.Serializable;

import org.apache.commons.codec.digest.DigestUtils;

import lombok.Data;

@Data
public class MemberDTO implements Serializable{
	
	private String id;
	private String password;
	private String name;
	private String email;
	private String joindate;
	
	public void setPwd(String password) {
		this.password = DigestUtils.sha512Hex(password);
	}
}
