package listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class ContextListener
 *
 */
@WebListener
public class ContextListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public ContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent sessionEvent)  { 
         // TODO Auto-generated method stub
    	//session创建时
    	//获取当前系统的在线人数
    	//将当前系统的在线人数存储到servletContext中
    	//当系统有新的用户访问时，从servletContext取出数据，在线人数加一
    	//在线人数重新存储到servletContext
    	HttpSession session = sessionEvent.getSession();
    	ServletContext servletContext = session.getServletContext();
    	Integer onlineNum = (Integer) servletContext.getAttribute("onlineNum");
    	System.out.println("create");
    	System.out.println(onlineNum);
    	if(onlineNum == null) {
    		onlineNum = new Integer(1);
    	}else {
    		int num = onlineNum.intValue();
    		onlineNum = new Integer(num+1);
    	}
    	servletContext.setAttribute("onlineNum", onlineNum);
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
         // TODO Auto-generated method stub
    	//session销毁时
    	//当系统有用户离开是，从servletContext取出数据，在线人数减一
    	//在线人数重新存储到servletContext
    	HttpSession session = arg0.getSession();
    	ServletContext servletContext = session.getServletContext();
    	Integer onlineNum = (Integer) servletContext.getAttribute("onlineNum");
    	if(onlineNum == null) {
    		onlineNum = new Integer(0);
    	}else {
    		int num = onlineNum.intValue();
    		onlineNum = new Integer(num-1);
    	}
    	servletContext.setAttribute("onlineNum", onlineNum);
    }
	
}
