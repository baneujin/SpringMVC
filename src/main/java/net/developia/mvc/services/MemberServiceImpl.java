package net.developia.mvc.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import net.developia.mvc.models.MemberDAO;
import net.developia.mvc.models.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	@Qualifier(value = "memberDAO")
	@Autowired
	private MemberDAO memberDAO;
	
	
	
	@Override
	public void insertMember(MemberDTO memberDTO) throws Exception {
		memberDAO.insertMember(memberDTO);
		
	}
	@Override
	public void loginMember(MemberDTO memberDTO) throws Exception {
		memberDAO.loginMember(memberDTO);
		String originPassword="";
		int result;
		originPassword=memberDTO.getPassword();
		if(memberDTO.getId()==null) {
			result=-1;
		}else if(originPassword.equals(memberDTO.getPassword())){
			result=1; //성공
		}else {
			result=0; //비밀번호 다름
		}
		if(result==0) {
			throw new RuntimeException("비밀번호가 틀립니다. 비밀번호를 확인해주세요");
		}else if(result==-1) {
			throw new RuntimeException("해당 아이디가 없습니다. 아이디를 확인해주세요");
		}
		
	}
	
	@Override
	public MemberDTO getMember(String name) throws Exception {
		return memberDAO.getMember(name);
	}



}
