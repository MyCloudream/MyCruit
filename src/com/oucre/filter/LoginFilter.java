package com.oucre.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	/**
	 * ������
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
	/*	if (req.getSession().getAttribute("user_info") == null) {
			res.sendRedirect("/login.jsp");
		} else {
			chain.doFilter(request, response);
		}*/
		 HttpServletRequest httpRequest = (HttpServletRequest) request;
	        HttpServletResponse httpResponse = (HttpServletResponse) response;
	        HttpSession session = httpRequest.getSession();
	        // ��½url
	        String loginUrl = httpRequest.getContextPath() + "/login.jsp";
	/*        String url = httpRequest.getRequestURI();
	        String path = url.substring(url.lastIndexOf("/"));*/
	        // ��ʱ����ajax����ʱ���ó�ʱ״̬��ҳ������ʱ�򷵻���ʾ���ض���
	        if (session.getAttribute("user_info") == null) {
	            // �ж��Ƿ�Ϊajax����
	            if (httpRequest.getHeader("x-requested-with") != null
	                    && httpRequest.getHeader("x-requested-with")
	                            .equalsIgnoreCase("XMLHttpRequest")) {
	                httpResponse.addHeader("sessionstatus", "timeOut");
	                httpResponse.addHeader("loginPath", loginUrl);
	                chain.doFilter(request, response);// �����٣�������������
	            } else {
	                String str = "<script language='javascript'>alert('�Ự����,�����µ�¼');"
	                        + "window.top.location.href='"
	                        + loginUrl
	                        + "';</script>";
	                response.setContentType("text/html;charset=UTF-8");// �����������
	                try {
	                    PrintWriter writer = response.getWriter();
	                    writer.write(str);
	                    writer.flush();
	                    writer.close();
	                } catch (Exception e) {
	                    e.printStackTrace();
	                }
	            }
	        } else {
	            chain.doFilter(request, response);
	        }

		
		
	}

	/**
	 * ��ʼ��
	 */
	public void init(FilterConfig fConfig) throws ServletException {

	}

	/**
	 * ����
	 */
	public void destroy() {

	}
}
