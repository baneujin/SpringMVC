package net.developia.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.developia.mvc.models.ArticleDTO;
import net.developia.mvc.models.MemberDTO;
import net.developia.mvc.services.ArticleService;
import net.developia.mvc.services.MemberService;

@Controller
public class MemberControllers {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView Login() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView loginAction(@ModelAttribute MemberDTO memberDTO, HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession(true);
		session.setMaxInactiveInterval(60 * 30);
		try {
			memberService.loginMember(memberDTO);
			mav.setViewName("result");
			mav.addObject("msg", "로그인이 완료되었습니다.");
			mav.addObject("url", "memberinfo");
			
			session.setAttribute("id", memberDTO.getId());
			session.setAttribute("password", memberDTO.getPassword());

		} catch (Exception e) {
			mav.setViewName("result");
			mav.addObject("msg", e.getMessage());
			mav.addObject("url", "javascript:history.back();");
		}
		return mav;
	}
	
	@RequestMapping(value="/memberinfo" , method= RequestMethod.GET)
	public String memberInfo() {
		return "memberinfo";
		
	}
	
	@RequestMapping(value="/insertMember", method=RequestMethod.GET)
	public ModelAndView regist() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("insertMember");
		return mav;
	}
	
	@RequestMapping(value="/insertMember" , method=RequestMethod.POST)
	public ModelAndView registAction(MemberDTO memberDTO) {
		ModelAndView mav = new ModelAndView();
		try {
			memberService.insertMember(memberDTO);
			mav.setViewName("result");
			mav.addObject("msg","회원가입이 완료되었습니다.");
			mav.addObject("url","login");
		} catch (Exception e) {
			mav.setViewName("result");
			mav.addObject("msg",e.getMessage());
			mav.addObject("url", "javascript:history.back();");	
		}
		
		return mav;		
	}
	
	
	
}
