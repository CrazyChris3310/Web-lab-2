package filters;

import javax.servlet.*;
import java.io.IOException;


public class TimeFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException { }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        long start = System.nanoTime();
        filterChain.doFilter(servletRequest, servletResponse);
        long duration = (System.nanoTime() - start) / 1000;
        System.out.println(duration + " мкс");
    }

    @Override
    public void destroy() { }
}
