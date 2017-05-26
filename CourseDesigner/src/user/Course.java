package user;

import java.util.*;

public class Course {
	
	private String courseSimple;
	
	private String teachMethod;
	
	private String courseArange;
	
	private String courseAll;
	
	private String courseMu;
	
	private ArrayList<CourseMove> courseMoves;
	
	private ArrayList<Member> courseMembers;
	
	private ArrayList<Source> teachSource;
	
	private ArrayList<CourseBuild> courseBuilds;
	
	private String coursePerson;
	
	private String courseName;

	public String getCourseSimple() {
		return courseSimple;
	}

	public void setCourseSimple(String courseSimple) {
		this.courseSimple = courseSimple;
	}

	public String getTeachMethod() {
		return teachMethod;
	}

	public void setTeachMethod(String teachMethod) {
		this.teachMethod = teachMethod;
	}

	public String getCourseArange() {
		return courseArange;
	}

	public void setCourseArange(String courseArange) {
		this.courseArange = courseArange;
	}

	
	public ArrayList<CourseBuild> getCourseBuilds() {
		return courseBuilds;
	}

	public void setCourseBuilds(ArrayList<CourseBuild> courseBuilds) {
		this.courseBuilds = courseBuilds;
	}

	public String getCourseAll() {
		return courseAll;
	}

	public void setCourseAll(String courseAll) {
		this.courseAll = courseAll;
	}

	public String getCourseMu() {
		return courseMu;
	}

	public void setCourseMu(String courseMu) {
		this.courseMu = courseMu;
	}

/*	public String getCourseMove() {
		return courseMove;
	}

	public void setCourseMove(String courseMove) {
		this.courseMove = courseMove;
	}*/
	
	public ArrayList<Member> getCourseMembers() {
		return courseMembers;
	}

	public ArrayList<CourseMove> getCourseMoves() {
		return courseMoves;
	}

	public void setCourseMoves(ArrayList<CourseMove> courseMoves) {
		this.courseMoves = courseMoves;
	}

	public void setCourseMembers(ArrayList<Member> courseMembers) {
		this.courseMembers = courseMembers;
	}

	public ArrayList<Source> getTeachSource() {
		return teachSource;
	}

	public void setTeachSource(ArrayList<Source> teachSource) {
		this.teachSource = teachSource;
	}

	public String getCoursePerson() {
		return coursePerson;
	}

	public void setCoursePerson(String coursePerson) {
		this.coursePerson = coursePerson;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	
	
		
}
