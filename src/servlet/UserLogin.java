package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
//import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.DateUtil;
import dbOperation.UserDao;
import model.User;
/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
//@WebServlet(asyncSupported = true, urlPatterns = { "/UserLogin" })
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UserLogin() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("Served at: "+request.getContextPath()+"-username:"+username+"-password:"+password);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		UserDao UserQuery=new UserDao();
		if(!username.equals("") && !password.equals("")) {
			//boolean exist=UserQuery.existUser(username,password);
			User user = UserQuery.getUser(username,password);
			//if(exist) {
			if(user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("userInfo", user);
				//session.setAttribute("userInfo1", "test");
				Cookie lastAccess=null;//上一次访问的时间信息
				String lastAccessTime = "";
				Date date = new Date();//记录当前的系统时间
				String remember = request.getParameter("remember");
				if(remember!=null) {
					//记住用户名和密码，放入cookie中
					Cookie usernameCookie = new Cookie("usernameCookie",username);
					Cookie passwordCookie = new Cookie("passwordCookie",password);
					usernameCookie.setMaxAge(60*60*24);
					passwordCookie.setMaxAge(60*60*24);
					response.addCookie(usernameCookie);
					response.addCookie(passwordCookie);
				}
//				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//				String dateStr = format.format(date);//格式化当前的系统时间
				String dateStr = DateUtil.format(date, DatePattern.NORM_DATETIME_PATTERN);
				Cookie[] cookies = request.getCookies();
				if(cookies != null) {
					for(Cookie cookie:cookies) {
						//判断是否有上次访问的cookie
						if(cookie.getName().equals("lastAccess")) {
							lastAccess = cookie;
							break;
						}
					}
				}
				//没有上次访问，第一次访问
				if(lastAccess == null) {
					lastAccess = new Cookie("lastAccess",dateStr);
					lastAccess.setMaxAge(60*60*24);//设置cookie存储时间为一天
				}else {
					//lastAccess不为空，代表再次访问
					lastAccessTime = lastAccess.getValue();
					//再次访问更新cookie中的访问时间
					lastAccess.setValue(dateStr);
				}
				//设置响应，发送至客户端
				response.addCookie(lastAccess);
				if(lastAccessTime.equals("")) {
					//writer.print("<script>alert('用户名密码正确！correct');location.href='center.html'</script>");
					writer.print("<script>alert('用户名密码正确！correct');location.href='center.jsp'</script>");
				}else {
					//String r = "<script>alert('用户名密码正确！correct 您上次访问时间是"+lastAccessTime+"');console.log('"+lastAccessTime+"');location.href='center.html'</script>";
					String r = "<script>alert('用户名密码正确！correct 您上次访问时间是"+lastAccessTime+"');console.log('"+lastAccessTime+"');location.href='center.jsp'</script>";
					System.out.println(r);
					writer.print(r);
				}
				
				
			}else {
				writer.print("<script>alert('用户名或密码错误！error');location.href='index.html'</script>");
			}
		}else {
			writer.print("<script>alert('用户名或密码不能为空！');location.href='index.html'</script>");
		}
		
									
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
