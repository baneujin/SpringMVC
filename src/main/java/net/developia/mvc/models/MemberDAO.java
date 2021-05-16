package net.developia.mvc.models;

import java.sql.SQLException;

public interface MemberDAO {
	void insertMember(MemberDTO memberDTO) throws SQLException;
	
	void loginMember(MemberDTO memberDTO) throws SQLException;
	
	MemberDTO getMember(String name) throws SQLException;
}
