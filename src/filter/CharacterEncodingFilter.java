package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
/*import javax.servlet.annotation.WebFilter;*/

/**
 * Servlet Filter implementation class CharacterEncodingFilter
 */
/* @WebFilter("/*") */
public class CharacterEncodingFilter implements Filter {

    /**
     * Default constructor. 
     */
    public CharacterEncodingFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// 过滤器实现的功能在doFilter方法中定义
		request.setCharacterEncoding("UTF-8");
		System.out.println("设置编码过滤器");
		response.setContentType("text/html;charset=UTF-8");
		// pass the request along the filter chain
		//FilterChain chain代表过滤器链
		//将request和response对象传递给过滤器中的下一个过滤器
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
