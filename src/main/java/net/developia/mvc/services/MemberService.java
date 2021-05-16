package net.developia.mvc.services;

import net.developia.mvc.models.MemberDTO;

public interface MemberService {
	void insertMember(MemberDTO memberDTO) throws Exception;

	void loginMember(MemberDTO memberDTO) throws Exception;

	MemberDTO getMember(String name) throws Exception;
}
