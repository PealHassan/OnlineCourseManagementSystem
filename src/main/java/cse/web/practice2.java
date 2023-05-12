package cse.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class practice2 extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		  PrintWriter out = res.getWriter(); 
		  HttpSession session = req.getSession();
		  String name = (String)session.getAttribute("user"); 
		  out.println("this is screen 2, " + name);		
		  out.println("hello2");
	}
}
