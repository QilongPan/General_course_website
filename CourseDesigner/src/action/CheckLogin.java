package action;

import user.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import controlDB.FoundationControl;

@SuppressWarnings("serial")
public class CheckLogin extends ActionSupport implements ModelDriven<User> {

	private User user = new User();
	private FoundationControl fc = new FoundationControl();
	private String checkCode;
	private String checkCode2;
	
	
	public String getCheckCode2() {
		return checkCode2;
	}

	public void setCheckCode2(String checkCode2) {
		this.checkCode2 = checkCode2;
	}

	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	public String execute() {
		ActionContext.getContext().getSession()
				.put("userName", user.getUserName());
		if (fc.selectUser(user.getUserName()) != null) {
			User currentUser = fc.selectUser(user.getUserName());
			if (currentUser.getPassword().equals(user.getPassword())) {
				return SUCCESS;
			}
		}
		System.out.println("检查成功" + user.getUserName());
		return INPUT;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	public void validate(){
		if(user.getUserName() == null || user.getUserName().length() == 0) {
			addFieldError("userName","用户名不能为空");
		}
		
		if(user.getPassword() == null || user.getUserName().length() == 0){
			addFieldError("password","密码不能为空");
		}
		if(checkCode.length()==0){
			addFieldError("checkCode","验证码不能为空");
		}
		if(!checkCode.equals(checkCode2)&&checkCode.length() != 0){
			addFieldError("checkCode","验证码输入不正确");
		}
	}
}
