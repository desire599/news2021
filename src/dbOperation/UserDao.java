package dbOperation;

import java.sql.SQLException;

//import com.mysql.jdbc.Connection;
import java.sql.Connection;
//import com.mysql.jdbc.ResultSet;

import dbOperation.DBConn;
import model.User;

public class UserDao {
	Connection conn=DBConn.getConn();
	public boolean existUser(String username,String password) {
		boolean exist=false;
		try {
			Connection conn = DBConn.getConn();
			//SQL���
			String sql="select * from user where username=? and password=?";
			//����PreparedStatement
			java.sql.PreparedStatement prepareStatement= conn.prepareStatement(sql);
			//����ʧȥ������е�ռλ������Ӧ��ֵ
			prepareStatement.setString(1, username);
			prepareStatement.setString(2, password);
			System.out.println("UserQuery.java 24�� ִ����"+sql+"### username:"+username+"password:"+password);
			//ִ�в�ѯ����ȡ��ѯ�����
			java.sql.ResultSet resultSet=prepareStatement.executeQuery();
			//�жϽ�������Ƿ��ж�Ӧ�ļ�¼
			if(resultSet.next()) {
				exist=true;
			}		
		}catch(SQLException e){
			e.printStackTrace();
		}
		return exist;
	}
	public void insert(User user) {
		try {
			Connection conn = DBConn.getConn();
			//SQL���
			String sql="insert into `user`(username,password,image,regtime,email,type)"+"values(?,?,?,NOW(),?,1)";
			//����PreparedStatement
			java.sql.PreparedStatement prepareStatement= conn.prepareStatement(sql);
			//����ʧȥ������е�ռλ������Ӧ��ֵ
			prepareStatement.setString(1, user.getUsername());
			prepareStatement.setString(2, user.getPassword());
			prepareStatement.setString(3, user.getImage());
			prepareStatement.setString(4, user.getEmail());
			prepareStatement.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}

}