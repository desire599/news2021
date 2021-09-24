package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbOperation.UserDao;
import model.User;

/**
 * Servlet implementation class UserRegist
 */
@WebServlet("/UserRegist")
public class UserRegist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegist() {
        super();
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
		String password1 = request.getParameter("password1");
		String email = request.getParameter("email");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		if(password != "" && password1 != "" && password.equals(password1)) {
			if(username != "" && email != "") {
				User user = new User();
				user.setUsername(username);
				user.setPassword(password);
				user.setEmail(email);
				user.setImage("a1.png");
				UserDao userDao = new UserDao();
				userDao.insert(user);
				writer.print("<script>alert('注册成功！');location.href='index.html'</script>");
			}else {
				writer.print("<script>alert('用户名或邮箱不能为空！');location.href='regist.html'</script>");
			}
		}else {
			writer.print("<script>alert('密码和确认密码不一致！');location.href='regist.html'</script>");
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
