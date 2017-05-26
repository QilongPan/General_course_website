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
		System.out.println("���ɹ�" + user.getUserName());
		return INPUT;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	public void validate(){
		if(user.getUserName() == null || user.getUserName().length() == 0) {
			addFieldError("userName","�û�������Ϊ��");
		}
		
		if(user.getPassword() == null || user.getUserName().length() == 0){
			addFieldError("password","���벻��Ϊ��");
		}
		if(checkCode.length()==0){
			addFieldError("checkCode","��֤�벻��Ϊ��");
		}
		if(!checkCode.equals(checkCode2)&&checkCode.length() != 0){
			addFieldError("checkCode","��֤�����벻��ȷ");
		}
	}
}
