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
				Cookie lastAccess=null;//��һ�η��ʵ�ʱ����Ϣ
				String lastAccessTime = "";
				Date date = new Date();//��¼��ǰ��ϵͳʱ��
//				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//				String dateStr = format.format(date);//��ʽ����ǰ��ϵͳʱ��
				String dateStr = DateUtil.format(date, DatePattern.NORM_DATETIME_PATTERN);
				Cookie[] cookies = request.getCookies();
				if(cookies != null) {
					for(Cookie cookie:cookies) {
						//�ж��Ƿ����ϴη��ʵ�cookie
						if(cookie.getName().equals("lastAccess")) {
							lastAccess = cookie;
							break;
						}
					}
				}
				//û���ϴη��ʣ���һ�η���
				if(lastAccess == null) {
					lastAccess = new Cookie("lastAccess",dateStr);
					lastAccess.setMaxAge(60*60*24);//����cookie�洢ʱ��Ϊһ��
				}else {
					//lastAccess��Ϊ�գ������ٴη���
					lastAccessTime = lastAccess.getValue();
					//�ٴη��ʸ���cookie�еķ���ʱ��
					lastAccess.setValue(dateStr);
				}
				//������Ӧ���������ͻ���
				response.addCookie(lastAccess);
				if(lastAccessTime.equals("")) {
					//writer.print("<script>alert('�û���������ȷ��correct');location.href='center.html'</script>");
					writer.print("<script>alert('�û���������ȷ��correct');location.href='center.jsp'</script>");
				}else {
					//String r = "<script>alert('�û���������ȷ��correct ���ϴη���ʱ����"+lastAccessTime+"');console.log('"+lastAccessTime+"');location.href='center.html'</script>";
					String r = "<script>alert('�û���������ȷ��correct ���ϴη���ʱ����"+lastAccessTime+"');console.log('"+lastAccessTime+"');location.href='center.jsp'</script>";
					System.out.println(r);
					writer.print(r);
				}
				
				
			}else {
				writer.print("<script>alert('�û������������error');location.href='index.html'</script>");
			}
		}else {
			writer.print("<script>alert('�û��������벻��Ϊ�գ�');location.href='index.html'</script>");
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
