package sample1;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.sun.glass.ui.Application;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

/**
 * Application Lifecycle Listener implementation class BoardAppListner
 *
 */
//@WebListener
public class BoardAppListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public BoardAppListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  {
    	System.out.println("board app listner initialized...");
    	ServletContext application = sce.getServletContext();
    	java.util.List<Board> list = new ArrayList<>();
    	
    	application.setAttribute("boards", list);
    }
	
}
