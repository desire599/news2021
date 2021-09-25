package servlet;

import java.io.IOException;
//import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import cn.hutool.core.util.StrUtil;
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
		//PrintWriter writer = response.getWriter();
		if(!StrUtil.isBlankIfStr(password) && !StrUtil.isBlankIfStr(password1) && password.equals(password1)) {
			if(!StrUtil.isBlankIfStr(username) && !StrUtil.isBlankIfStr(email)) {
				User user = new User();
				try {
					BeanUtils.populate(user, request.getParameterMap());
				}catch(IllegalAccessException | InvocationTargetException e) {
					e.printStackTrace();
				}
				//user.showUser();
				//System.out.println(user);
				//从session中获取验证码
				HttpSession session = request.getSession();
				String checkcode = (String) session.getAttribute("checkcode");//从session中得到生成的验证码
				String userCheckcode = user.getUserCheckcode();//获取用户输入的验证码
				if(!StrUtil.isBlankIfStr(userCheckcode) && !StrUtil.isBlankIfStr(checkcode) && userCheckcode.equalsIgnoreCase(checkcode)) {
					user.setUsername(username);
					user.setPassword(password);
					user.setEmail(email);
					user.setImage("a1.png");
					UserDao userDao = new UserDao();
					userDao.insert(user);
					//writer.print("<script>alert('注册成功！');location.href='index.html'</script>");
					request.setAttribute("success", "注册成功！");
					request.getRequestDispatcher("regist.jsp").forward(request, response);
					//writer.print("<script>location.href='index.html'</script>");
				}else {
					//writer.print("<script>alert('验证码错误！');location.href='regist.html'</script>");
					request.setAttribute("errCode", "验证码错误！");
					//将request和response中存储的信息转发给regist.jsp页面
					request.getRequestDispatcher("regist.jsp").forward(request, response);
					// 重定向不能request和response中存储的信息转发给 regist.jsp页面
					//response.sendRedirect("regist.jsp");
				}

				
			}else {
				//writer.print("<script>alert('用户名或邮箱不能为空！');location.href='regist.html'</script>");
				request.setAttribute("errMsg", "用户名或邮箱不能为空！");
				request.getRequestDispatcher("regist.jsp").forward(request, response);
			}
		}else {
			//writer.print("<script>alert('密码和确认密码不一致！');location.href='regist.html'</script>");
			request.setAttribute("errPasswd", "密码和确认密码不一致！");
			request.getRequestDispatcher("regist.jsp").forward(request, response);
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
