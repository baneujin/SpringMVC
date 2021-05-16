package net.developia.mvc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import net.developia.mvc.models.ArticleDAO;
import net.developia.mvc.models.ArticleDTO;


@Service
public class ArticleServieImpl implements ArticleService{
	

	@Autowired
	@Qualifier(value="articleDAO")
	private ArticleDAO articleDAO;
	
	
	@Override
	public void insertArticle(ArticleDTO articleDTO) throws Exception {
		articleDAO.insertArticle(articleDTO);
	}
	@Override
	public List<ArticleDTO> getArticleList() throws Exception {
		return articleDAO.getArticleList();
	}

	
	@Override
	public ArticleDTO getDetail(long no) throws Exception{
		try {
			articleDAO.getDetail(no);
			ArticleDTO articleDTO = articleDAO.getDetail(no);
			if(articleDTO == null) {throw new RuntimeException("상세보기 실패");}
			
			return articleDTO;
				
		} finally {}
		
	}
	
//	@Override
//	public ArticleDTO getUpdate(long no) throws Exception {
//
//		try {
//			ArticleDTO articleDTO = articleDAO.getUpdate(no);
//			if(articleDTO == null) {throw new RuntimeException("글 수정을 위한 원글 읽어오기 실패");}
//			return articleDTO;
//			
//			
//		} finally {}
//	}
	
	@Override
	public void updateArticle(ArticleDTO articleDTO) throws Exception {
		if(articleDAO.updateArticle(articleDTO)==0) {
		throw new RuntimeException("글이 없거나 비밀번호가 틀립니다.");
		}
		
	}
//	@Override
//	public ArticleDTO getDelete(long no) throws Exception {
//		try {
//			ArticleDTO articleDTO = articleDAO.getDelete(no);
//			if(articleDTO == null) {throw new RuntimeException("글 삭제를 위한 폼 읽어오기 실패");}
//			return articleDTO;
//			
//			
//		} finally {}
//	}
	
	@Override
	public void deleteArticle(ArticleDTO articleDTO) throws Exception {
		if(articleDAO.deleteArticle(articleDTO)==0) {
			throw new RuntimeException("비밀번호가 틀립니다.");
		}
	}
	

}
	

