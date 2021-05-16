package net.developia.mvc.services;

import java.util.List;

import net.developia.mvc.models.ArticleDTO;

public interface ArticleService {

	void insertArticle(ArticleDTO articleDTO) throws Exception;

	List<ArticleDTO> getArticleList() throws Exception;

	ArticleDTO getDetail(long no) throws Exception;
	
//	ArticleDTO getUpdate(long no) throws Exception;

	void updateArticle(ArticleDTO articleDTO) throws Exception;

//	ArticleDTO getDelete(long no) throws Exception;
	
	void deleteArticle(ArticleDTO articleDTO) throws Exception;
	

	
}
