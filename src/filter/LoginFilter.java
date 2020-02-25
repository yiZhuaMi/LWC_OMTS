package filter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {

	
	private String excludedPages;       
	private String[] excludedPageArray;     
	
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
      
    	excludedPages = filterConfig.getInitParameter("excludedPages");     
//    	if (StringUtils.isNotEmpty(excludedPages)) {     
    	if (excludedPages != null && excludedPages.length() > 0)
    	{
    		excludedPageArray = excludedPages.split(",");     
    	}     
    	return;     

    	
    	
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,FilterChain chain) throws IOException, ServletException 
    {
        HttpServletRequest servletRequest = (HttpServletRequest) request;
        HttpServletResponse servletResponse = (HttpServletResponse) response;
        HttpSession session = servletRequest.getSession();

       
        String path = servletRequest.getRequestURI();
        
      
        String username = (String) session.getAttribute("username");
        System.out.println("(filter)用户:'"+username+"'	请求访问："+path);
        
        
        boolean isExcludedPage = false;     
        for (String page : excludedPageArray) 
        {//判断是否在过滤url之外     
	        if(((HttpServletRequest) request).getServletPath().equals(page))
	        {     
	        	isExcludedPage = true;     
	        	break;     
	        }     
        }     
          
        if (isExcludedPage) 
        {//在过滤url之外     
        	chain.doFilter(request, response);     
        } 
        else 
        {
       
	        if(path.indexOf("login.jsp") > -1) 
	        {
	        	
	            chain.doFilter(servletRequest, servletResponse);
	            return;
	        }
	
	        if (username == null || "".equals(username)) 
	        {
	        	System.out.println("跳转至登录页面。。。");
	            servletResponse.sendRedirect("login.jsp");
	        } 
	        else 
	        {
	            chain.doFilter(request, response);
	        }
        }
    }

    @Override
    public void destroy() 
    {
     

    }

}