package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controlDB.ArticalControlDB;

//и╬ЁЩндуб
public class DeleteArticle extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ArticalControlDB acd = new ArticalControlDB();

	public String delete() {
		HttpServletRequest request = ServletActionContext.getRequest();
		if (request.getParameter("id") != null) {
			int id = Integer.parseInt(request.getParameter("id"));
			acd.deleteArticle(id);
		}
		return SUCCESS;
	}

}
