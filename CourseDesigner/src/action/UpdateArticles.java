package action;

import java.sql.SQLException;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import user.Article;
import controlDB.ArticalControlDB;

public class UpdateArticles extends ActionSupport implements
ModelDriven<Article>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Article article = new Article();
	private ArticalControlDB acd = new ArticalControlDB();

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public String update_save() throws SQLException{
		if(article != null){
			acd.updateArticle(article);
			return SUCCESS;
		}
		return LOGIN;
		
	} 
	
	@Override
	public Article getModel() {
		// TODO Auto-generated method stub
		return article;
	}

}
