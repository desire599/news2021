package servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServletConfig
 */
@WebServlet("/TestServletConfig")
public class TestServletConfig extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ServletConfig servletConfig;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServletConfig() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		this.servletConfig=config;
	}

	/**
	 * @see Servlet#getServletConfig()
	 */
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return this.servletConfig;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String encoding =this.servletConfig.getInitParameter("encoding");
		System.out.println(encoding);
		ServletContext servletContext=this.getServletContext();
	    servletContext.setAttribute("user","哈喽hello");
		response.setContentType("text/html;charset=UTF-8");
		String user=(String)this.getServletContext().getAttribute("user");
		System.out.println(user);
		response.getWriter().append(encoding+"+"+user);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
