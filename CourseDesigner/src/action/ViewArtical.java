package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import user.Article;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import controlDB.ArticalControlDB;

public class ViewArtical extends ActionSupport implements ModelDriven<Article> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ArticalControlDB acd = new ArticalControlDB();
	private static int page=1;
	public ArticalControlDB getAcd() {
		return acd;
	}

	public void setAcd(ArticalControlDB acd) {
		this.acd = acd;
	}

	public String execute() {
		ArrayList<Article> articleList = new ArrayList<Article>();
		HttpServletRequest request = ServletActionContext.getRequest();
		if(request.getParameter("page") != null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		articleList = acd.getPageElements(page);
	//	articleList = acd.getAllDBArticle();
		request.setAttribute("allArticleList", articleList);
		return SUCCESS;
	}

	@Override
	public Article getModel() {
		// TODO Auto-generated method stub
		return null;
	}

}
