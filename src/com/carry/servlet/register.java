package com.carry.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carry.entity.User;
import com.carry.operate.user_operate;

public class register extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public register() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		user_operate user_o =new user_operate();
		int state=user_o.user_insert(request.getParameter("studentNum"), request.getParameter("name"), request.getParameter("password1"), request.getParameter("gender"), request.getParameter("qq"), request.getParameter("phone"), request.getParameter("email"), request.getParameter("school"));
		if(state==0){
			out.print("<script type=\"text/javascript\" >alert(\"×¢²áÊ§°Ü£¬Çë¼ì²éÑ§ºÅÊÇ·ñÒÑ×¢²á£¡\"); window.location.href=\"../account/register.html\"; </script>");
		}else{
			Vector userinfo=new Vector();
			userinfo=user_o.user_quary(request.getParameter("studentNum"));
			User user_all=new User();
			for(int i=0;i<userinfo.size();i++){
				user_all=(User)userinfo.elementAt(i);
			}
			session.setAttribute("studentnum",user_all.getStudentnum());
			session.setAttribute("username",user_all.getName());
    		session.setAttribute("userid", user_all.getId());
    		out.print("<script type=\"text/javascript\" >alert(\"×¢²á³É¹¦£¬ÇëµÇÂ½£¡\"); window.location.href=\"../index/index.jsp\"; </script>");
		}
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
