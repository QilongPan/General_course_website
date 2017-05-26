package action;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import user.Course;
import com.opensymphony.xwork2.ActionSupport;
import controlDB.CourseControlDB;

public class DisplayCourseInfo extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	public String display(){
		CourseControlDB ccd = new CourseControlDB();
		Course course =ccd.selectCourse("数据结构");
		if(course != null) {
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("course", course);
			return SUCCESS;
		}
		
		return INPUT;
	}

}
