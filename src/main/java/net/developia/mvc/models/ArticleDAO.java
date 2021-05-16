package net.developia.mvc.models;

import java.sql.SQLException;
import java.util.List;

public interface ArticleDAO {
	
	long getNewArticleNO() throws SQLException;
	
	void insertArticle(ArticleDTO articleDTO) throws SQLException;

	List<ArticleDTO> getArticleList() throws SQLException;

	ArticleDTO getDetail(long no) throws SQLException;

//	void updateReadcount(long no);
	
//	ArticleDTO getUpdate(long no) throws SQLException;

	int updateArticle(ArticleDTO articleDTO) throws SQLException;

//	ArticleDTO getDelete(long no) throws SQLException;

	int deleteArticle(ArticleDTO articleDTO) throws SQLException;

	void addReply(ArticleDTO articleDTO) throws SQLException;
}
