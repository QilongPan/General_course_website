package controlDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import user.User;
import db.DBConnection;

public class FoundationControl {
	// 增加
	public void saveUser(User user) throws SQLException {
		Connection conn = DBConnection.getConnection();
		String sql = " " + "insert into user" + " (userName,password,sex,age)"
				+ "values(" + "?,?,?,?)";
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ptmt.setString(1, user.getUserName());
		ptmt.setString(2, user.getPassword());
		ptmt.setString(3, user.getSex());
		ptmt.setInt(4, user.getAge());
		ptmt.execute();
	}

	// 删除
	public void deleteUser(int id) {
		Connection conn = DBConnection.getConnection();
		String sql = " " + "delete  from user  where id = ?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, id);
			ptmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 修改
	public void updateUser(User user) {
		Connection conn = DBConnection.getConnection();
		String sql = " "
				+ "update user  set  userName = ? ,password=?,sex=? ,age=?";
		PreparedStatement ptmt;
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, user.getUserName());
			ptmt.setString(2, user.getPassword());
			ptmt.setString(3, user.getSex());
			ptmt.setInt(4, user.getAge());
			ptmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 查找
	public User selectUser(String userName) {
		ArrayList<User> users = new ArrayList<User>();
		Connection conn = DBConnection.getConnection();
		String sql = " " + "select * from user  where userName = ?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, userName);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getInt("age"));
				users.add(user);
			}
			if (users.size() != 0)
				return users.get(0);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
