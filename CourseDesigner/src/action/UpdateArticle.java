package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import user.Article;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import controlDB.ArticalControlDB;

public class UpdateArticle extends ActionSupport implements
		ModelDriven<Article> {

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

	public String update(){
		HttpServletRequest request = ServletActionContext.getRequest();
		if (request.getParameter("id") != null) {
			int id = Integer.parseInt(request.getParameter("id"));
			ArrayList<Article> articleList = acd.getArticleById(id);
			if (articleList.size() > 0) {
				article = articleList.get(0);
				ActionContext.getContext().getSession().put("article",article);
				return SUCCESS;
			}
		}
		return LOGIN;
	} 
	@Override
	public Article getModel() {
		// TODO Auto-generated method stub
		return article;
	}
}
