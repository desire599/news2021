package dbOperation;

//import java.io.IOException;
//import java.io.InputStreamReader;
import java.sql.DriverManager;
import java.sql.SQLException;
//import java.util.Properties;

import cn.hutool.setting.dialect.Props;
import cn.hutool.setting.dialect.PropsUtil;

//import org.omg.CORBA.portable.InputStream;
import java.sql.Connection;
//import com.mysql.jdbc.Connection;

public class DBConn {
	public static Connection getConn() {
		Connection conn=null;
//		Properties properties=new Properties();
//		try {
//			java.io.InputStream inputStream=DBConn.class.getClassLoader().getResourceAsStream("db.properties");
//			properties.load(new InputStreamReader(inputStream,"utf-8"));
//		}catch(IOException e1) {
//			e1.printStackTrace();
//		}
		
//		String driver=properties.getProperty("driver");
//		String url=properties.getProperty("url");
//		String username=properties.getProperty("username");
//		String password=properties.getProperty("password");
//		System.out.println(url);
		Props props = PropsUtil.get("db.properties");
		String driver = props.getStr("driver");
		String url = props.getStr("url");
		String username = props.getStr("username");
		String password = props.getStr("password");
		
		try {
			Class.forName(driver);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try {
			conn= (Connection) DriverManager.getConnection(url,username,password);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

}