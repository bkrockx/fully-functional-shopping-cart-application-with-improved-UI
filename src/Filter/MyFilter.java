package Filter;

import java.io.IOException;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Role;


//@WebFilter(urlPatterns={"/*"})
public class MyFilter implements Filter {

   
    private ServletContext context;


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		response.setContentType("text/html");
		
		HttpServletRequest request1 = (HttpServletRequest)request;
		HttpServletResponse response1 = (HttpServletResponse)response;
		HttpSession session = request1.getSession(false);
		
		String uri = request1.getRequestURI();
        /*---------------- if uri contains css or img ---------------------------------------------------*/
		
		if( (uri.contains("css"))||(uri.contains("img"))){
			chain.doFilter(request,response);
			System.out.println("enter1");
			
		}
		
		else{	
			if( (session==null || session.getAttribute("users")==null)){
				if( (!uri.contains("login"))&&(!uri.contains("authenticate")) ){
					//response1.sendRedirect("/Project1/record/login");
					System.out.println("enter2");
					request1.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request1,response1);
				}
				else{
					chain.doFilter(request,response);
				}
			}
			//(if session is set)
			else{
				boolean permit = false;
				// If URL ends with admin
				
				if(uri.contains("record/admin")){
					//System.out.println("entered");
					System.out.println(request1.getSession(false).getId());
					Set<Role> roles = (Set<Role>) session.getAttribute("role");
					for (Role role1: roles) {   		
			    		if(role1.getRoleName().equalsIgnoreCase("admin")){
			    			permit = true;
			    		}    		
			    	}
					
					if(permit){
						//chain.doFilter(request,response);
						System.out.println("permission given");
						request1.getRequestDispatcher("/WEB-INF/jsp/admin.jsp").forward(request1,response1);
					}
					else{
						request1.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request1, response1);
					}
	 			}
				else{
					chain.doFilter(request,response);
				}
			}
			
		}
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		this.context = fConfig.getServletContext();
	}


	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}