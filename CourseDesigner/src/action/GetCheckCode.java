package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetCheckCode extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String checkCode;

	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	public String randomCheckCode() {
		checkCode = "";
		for (int i = 0; i < 4; i++) {
			checkCode += (int) (Math.random() * 10);
		}
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("checkCode2", checkCode);
		return null;
	}

}
