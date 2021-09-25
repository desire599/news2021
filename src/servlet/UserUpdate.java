package servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import dbOperation.UserDao;
import model.User;

/**
 * Servlet implementation class UserUpdate
 */
@WebServlet("/UserUpdate")
public class UserUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//��ȡҳ�洫�ݵ�����
		User user = new User();
		try {
			BeanUtils.populate(user, request.getParameterMap());
		}catch(IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		System.out.println(request.getParameter("username"));
		//����UserDao.java �еķ�����������Ϣ�����ݿ�
		UserDao userDao = new UserDao();
		userDao.update(user);
		HttpSession session = request.getSession();
		session.setAttribute("userInfo", user);
		//��תҳ��
		request.setAttribute("msg", "�޸ĳɹ���");
		request.getRequestDispatcher("center.jsp").forward(request,response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
