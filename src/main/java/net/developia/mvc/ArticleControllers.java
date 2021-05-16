package net.developia.mvc;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.developia.mvc.models.ArticleDTO;
import net.developia.mvc.services.ArticleService;
import net.developia.mvc.services.MemberService;

@Controller
public class ArticleControllers {

	@Autowired
	private ArticleService articleService;
	
	@RequestMapping(value = "/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		try {
			List<ArticleDTO> list = articleService.getArticleList();
			mav.setViewName("list");
			mav.addObject("list",list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value="/insert" , method=RequestMethod.GET)
	public ModelAndView insert(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("insert");
		return mav;
	}
	
	@RequestMapping(value="/insert", method= RequestMethod.POST)
	public ModelAndView insertAction(ArticleDTO articleDTO) {
		ModelAndView mav = new ModelAndView();
	
		try {
		
			articleService.insertArticle(articleDTO);
			mav.setViewName("result");
			mav.addObject("msg","글이 등록되었습니다.");
			mav.addObject("url","list");
			
		} catch (Exception e) {
			mav.setViewName("result");
			mav.addObject("msg", "글 등록에 실패하였습니다.");
			mav.addObject("url", "javascript:history.back();");
		}
		return mav;
	}
	
	
	@RequestMapping(value="/detail", method= RequestMethod.GET)
	public ModelAndView getDetail(@RequestParam(required=true) long no){
		
		try {
			ArticleDTO articleDTO = articleService.getDetail(no);
			return new ModelAndView("detail","articleDTO",articleDTO);
		} catch (Exception e) {
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("result");
			mav.addObject("msg", e.getMessage());
			mav.addObject("url", "list");
			return mav;
		}
		
	}
	
	@RequestMapping(value="/update", method= RequestMethod.GET)
	public ModelAndView update(@RequestParam(required=true) long no) {
		
		try {
			ArticleDTO articleDTO = articleService.getDetail(no);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("update");
			mav.addObject("articleDTO",articleDTO);
			return mav;	
		} catch (Exception e) {
			ModelAndView mav = new ModelAndView("result");
			mav.addObject("msg", e.getMessage());
			mav.addObject("url", "list");
			return mav;			
		}		
}
	@RequestMapping(value="/update", method= RequestMethod.POST)
	public ModelAndView updateAction(ArticleDTO articleDTO) {
		ModelAndView mav = new ModelAndView();
		try {
			articleService.updateArticle(articleDTO);
			mav.setViewName("result");
			mav.addObject("msg", "게시물이 수정되었습니다.");
			mav.addObject("url", "detail?no=" + articleDTO.getNo());
		} catch (Exception e) {
			
			mav.setViewName("result");
			mav.addObject("msg", e.getMessage());
			mav.addObject("url", "javascript:history.back();");
		}
		return mav;
}
	@RequestMapping(value="/delete", method= RequestMethod.GET)
	public ModelAndView delete(@RequestParam(required=true) long no) {
		return new ModelAndView("delete","no",no);
		
}
	@RequestMapping(value="/delete", method= RequestMethod.POST)
	public ModelAndView deleteAction(ArticleDTO articleDTO) {
		ModelAndView mav = new ModelAndView();
		try {
			articleService.deleteArticle(articleDTO);
			mav.setViewName("result");
			mav.addObject("msg", articleDTO.getNo() + "번 게시물이 삭제되었습니다.");
			mav.addObject("url", "list");
		} catch (Exception e) {
			
			mav.setViewName("result");
			mav.addObject("msg", e.getMessage());
			mav.addObject("url", "javascript:history.back();");
		}
		return mav;
		
}
	
	@RequestMapping(value="/replyForm",method = RequestMethod.GET)
	public ModelAndView reply(@RequestParam(required = true) long parentno) {
		ModelAndView mav = new ModelAndView("replyForm","parentno",parentno);
	
		return mav;
		
	}
	@RequestMapping(value="/replyForm", method = RequestMethod.POST)
	public ModelAndView replyAction(ArticleDTO articleDTO) {
		ModelAndView mav = new ModelAndView();
		try {
			articleService.insertArticle(articleDTO);
			System.out.println("Reply");
			mav.setViewName("result");
			mav.addObject("msg","답글이 등록되었습니다.");
			mav.addObject("url","list");
			
			
		} catch (Exception e) {
			mav.setViewName("result");
			mav.addObject("msg", "글 등록에 실패하였습니다.");
			mav.addObject("url", "javascript:history.back();");
			e.printStackTrace();
		}
		return mav;
		
	}
	
	
	
}
