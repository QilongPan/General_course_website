package controlDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import user.Course;
import user.CourseBuild;
import user.CourseMove;
import user.Member;
import user.Source;
import db.DBConnection;

public class CourseControlDB {
		// 增加
		public void saveCourse(Course course) throws SQLException {
			Connection conn = DBConnection.getConnection();
			String sql = " " + "insert into course"
					+ " (courseName,coursePerson,courseSimple,teachMethod,courseArange,courseAll,courseMu)"
					+ "values(" + "?,?,?,?,?,?,?)";
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, course.getCourseName());
			ptmt.setString(2, course.getCoursePerson());
			ptmt.setString(3, course.getCourseSimple());
			ptmt.setString(4, course.getTeachMethod());
			ptmt.setString(5, course.getCourseArange());
			ptmt.setString(6, course.getCourseAll());
			ptmt.setString(7, course.getCourseMu());
			ptmt.execute();
		}
		
		// 删除
		public void deleteCourse(String courseName) {
			Connection conn = DBConnection.getConnection();
			String sql = " " + "delete  from course  where courseName = ?";
			try {
				PreparedStatement ptmt = conn.prepareStatement(sql);
				ptmt.setString(1, courseName);
				ptmt.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		// 查找
		public Course selectCourse(String courseName) {
			ArrayList<Course> courses = new ArrayList<Course>();
			Connection conn = DBConnection.getConnection();
			String sql = " " + "select * from course  where courseName = ?";
			try {
				PreparedStatement ptmt = conn.prepareStatement(sql);
				ptmt.setString(1, courseName);
				ResultSet rs = ptmt.executeQuery();
				while (rs.next()) {
					Course course = new Course();
					course.setCourseName(rs.getString("courseName"));
					course.setCoursePerson(rs.getString("coursePerson"));
					course.setCourseAll(rs.getString("courseAll"));
					course.setCourseArange(rs.getString("courseArange"));;
					course.setCourseMu(rs.getString("courseMu"));
					course.setCourseSimple(rs.getString("courseSimple"));
					course.setTeachMethod(rs.getString("teachMethod"));
					ArrayList<CourseMove> courseMoves =selectCourseMove(courseName);
					course.setCourseMoves(courseMoves);
					ArrayList<Source> sources = selectSource(courseName);
					course.setTeachSource(sources);
					ArrayList<Member> members = selectMember(courseName);
					course.setCourseMembers(members);
					ArrayList<CourseBuild> courseBuilds = selectCourseBuild(courseName);
					course.setCourseBuilds(courseBuilds);
					courses.add(course);
				}
				if (courses.size() != 0)
					return courses.get(0);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}

		//查找课程动态
		public ArrayList<CourseMove> selectCourseMove(String courseName) {
			ArrayList<CourseMove> courseMoves = new ArrayList<CourseMove>();
			Connection conn = DBConnection.getConnection();
			String sql = " " + "select * from coursemove  where courseName = ?";
			try {
				PreparedStatement ptmt = conn.prepareStatement(sql);
				ptmt.setString(1, courseName);
				ResultSet rs = ptmt.executeQuery();
				while (rs.next()) {
					CourseMove courseMove = new CourseMove();
					courseMove.setCourseName(rs.getString("courseName"));
					courseMove.setMoveName(rs.getString("moveName"));
					courseMove.setPath(rs.getString("path"));
					courseMove.setTime(rs.getDate("time"));
					courseMoves.add(courseMove);
				}
				if (courseMoves.size() != 0)
					return courseMoves;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		
		//查找教学资源
		public ArrayList<Source> selectSource(String courseName) {
			ArrayList<Source> sources = new ArrayList<Source>();
			Connection conn = DBConnection.getConnection();
			String sql = " " + "select * from teachsource  where courseName = ?";
			try {
				PreparedStatement ptmt = conn.prepareStatement(sql);
				ptmt.setString(1, courseName);
				ResultSet rs = ptmt.executeQuery();
				while (rs.next()) {
					Source source = new Source();
					source.setCourseName(rs.getString("courseName"));
					source.setPath(rs.getString("path"));
					source.setSourceName(rs.getString("sourceName"));
					source.setSourceType(rs.getString("sourceType"));
					sources.add(source);
				}
				if (sources.size() != 0)
					return sources;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		
		//查找课程组成员
		public ArrayList<Member> selectMember(String courseName) {
			ArrayList<Member> members = new ArrayList<Member>();
			Connection conn = DBConnection.getConnection();
			String sql = " " + "select * from member  where courseName = ?";
			try {
				PreparedStatement ptmt = conn.prepareStatement(sql);
				ptmt.setString(1, courseName);
				ResultSet rs = ptmt.executeQuery();
				while (rs.next()) {
					Member member = new Member();
					member.setCourseName(rs.getString("courseName"));
					member.setMemberIntroduce(rs.getString("memberIntroduce"));
					member.setMemberName(rs.getString("memberName"));
					member.setPath(rs.getString("path"));
					members.add(member);
				}
				if (members.size() != 0)
					return members;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		
		
		//查找课程建设
				public ArrayList<CourseBuild> selectCourseBuild(String courseName) {
					ArrayList<CourseBuild> courseBuilds = new ArrayList<CourseBuild>();
					Connection conn = DBConnection.getConnection();
					String sql = " " + "select * from coursebuild  where courseName = ?";
					try {
						PreparedStatement ptmt = conn.prepareStatement(sql);
						ptmt.setString(1, courseName);
						ResultSet rs = ptmt.executeQuery();
						while (rs.next()) {
							CourseBuild courseBuild = new CourseBuild();
							courseBuild.setBuildPlanPath(rs.getString("buildPlanPath"));
							courseBuild.setBuildTarget(rs.getString("buildTarget"));
							courseBuild.setCourseName(rs.getString("courseName"));
							courseBuilds.add(courseBuild);
						}
						if (courseBuilds.size() != 0)
							return courseBuilds;
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return null;
				}
		
}
