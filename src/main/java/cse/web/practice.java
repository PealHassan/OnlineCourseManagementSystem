package cse.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class practice extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		PrintWriter out = res.getWriter();
		String name = req.getParameter("user");
//		out.println(name);
		/* out.println("hello, " + name); */
//		req.setAttribute("user", name);
		HttpSession session = req.getSession();
		session.setAttribute("user", name);
		res.sendRedirect("resDis");
//		RequestDispatcher rd = req.getRequestDispatcher("resDis");
//		rd.forward(req, res);
		
		
	}
	
}
