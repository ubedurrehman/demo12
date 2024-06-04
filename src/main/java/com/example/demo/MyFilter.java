//package com.example.demo;
//
//import javax.servlet.*;
//import java.io.IOException;
//
//public class MyFilter implements Filter {
//    @Override
//    public void init(FilterConfig filterConfig) throws ServletException {
//
//    }
//
//    @Override
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//
//        System.out.println("before filter");
//
//        chain.doFilter(request, response);
//
//        System.out.println("after servlet");
//
//    }
//
//    @Override
//    public void destroy() {
//
//    }
//}
