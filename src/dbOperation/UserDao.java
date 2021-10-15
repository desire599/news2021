package dbOperation;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

//import com.mysql.jdbc.Connection;
import java.sql.Connection;
//import com.mysql.jdbc.ResultSet;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbOperation.DBConn;
import model.Kind;
import model.User;
import util.C3P0Util;

public class UserDao {
	Connection conn=DBConn.getConn();
	private QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
	public boolean existUser(String username,String password) {
		boolean exist=false;
		try {
			//Connection conn = DBConn.getConn();
			//SQL语句
			String sql="select * from user where username=? and password=?";
			//创建PreparedStatement
			/*java.sql.PreparedStatement prepareStatement= conn.prepareStatement(sql);
			//设置失去了语句中的占位符？对应的值
			prepareStatement.setString(1, username);
			prepareStatement.setString(2, password);
			System.out.println("UserQuery.java 24行 执行了"+sql+"### username:"+username+"password:"+password);
			//执行查询，获取查询结果集
			java.sql.ResultSet resultSet=prepareStatement.executeQuery();
			//判断结果集中是否含有对应的记录
			if(resultSet.next()) {
				exist=true;
			}*/
			User user = (User) qr.query(sql, new BeanListHandler<User>(User.class),username,password);
			if(user != null) {
				exist=true;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return exist;
	}
	public int insert(User user) {
		try {
			//Connection conn = DBConn.getConn();
			//SQL语句
			String sql="insert into `user`(username,password,image,regtime,email,type)"+"values(?,?,?,NOW(),?,1)";
			//创建PreparedStatement
			/*java.sql.PreparedStatement prepareStatement= conn.prepareStatement(sql);
			//设置失去了语句中的占位符？对应的值
			prepareStatement.setString(1, user.getUsername());
			prepareStatement.setString(2, user.getPassword());
			prepareStatement.setString(3, user.getImage());
			prepareStatement.setString(4, user.getEmail());
			prepareStatement.executeUpdate();*/
			return qr.update(sql,user.getUsername(),user.getPassword(),user.getImage(),user.getEmail());
		}catch(SQLException e){
			e.printStackTrace();
		}
		return 0;
	}
	public User getUser(String username,String password) {
		User user = null;
		try {
			//Connection conn = DBConn.getConn();
			String sql = "select uid,email,image from user where username=? and password=?";
			/*PreparedStatement prepareStatement = conn.prepareStatement(sql);
			prepareStatement.setString(1, username);
			prepareStatement.setString(2, password);
			ResultSet resultSet = prepareStatement.executeQuery();
			if(resultSet.next()) {
				user = new User();
				user.setUid(resultSet.getInt("uid"));
				user.setUsername(username);
				user.setEmail(resultSet.getString("email"));
				user.setImage(resultSet.getString("image"));
			}*/
			user = qr.query(sql, new BeanHandler<User>(User.class),username,password);
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	public int update(User user) {
		user.showUser();
		try {
			//Connection conn = DBConn.getConn();
			String sql = "update user set username=?,email=? where uid=?";
			/*PreparedStatement prepareStatement = conn.prepareStatement(sql);
			prepareStatement.setString(1, user.getUsername());
			prepareStatement.setString(2, user.getEmail());
			prepareStatement.setInt(3, user.getUid());
			prepareStatement.executeUpdate();*/
			return qr.update(sql,user.getUsername(),user.getEmail(),user.getUid());
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}