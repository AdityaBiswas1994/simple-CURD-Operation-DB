package com.Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		
		if(request.getParameter("action").equalsIgnoreCase("add")) 
		{
		String title=(request.getParameter("txttitle") != null) ? request.getParameter("txttitle") : "null";
		String artist=(request.getParameter("txtartist") != null) ? request.getParameter("txtartist") : "null";
		String director=(request.getParameter("txtdirector") != null) ? request.getParameter("txtdirector") : "null";
		String lang=(request.getParameter("txtlanguage") != null) ? request.getParameter("txtlanguage") : "null";
		String type=(request.getParameter("txttype") != null) ? request.getParameter("txttype") : "null";
		String gen=(request.getParameter("txtgenre") != null) ? request.getParameter("txtgenre") : "null";
		String avail1=(request.getParameter("txtavl1") != null) ? request.getParameter("txtavl1") : "null";
		String avail2=(request.getParameter("txtavl2") != null) ? request.getParameter("txtavl2") : "null";
		String format=(request.getParameter("txtformat") != null) ? request.getParameter("txtformat") : "null";
		String price=(request.getParameter("txtop") != null) ? request.getParameter("txtop") : "null";
		String discount=(request.getParameter("txtdiscount") != null) ? request.getParameter("txtdiscount") : "null";
		String cover=(request.getParameter("txtcover") != null) ? request.getParameter("txtcover") : "null";
		String track=(request.getParameter("txttrack") != null) ? request.getParameter("txttrack") : "null";
		String spec=(request.getParameter("txtspec") != null) ? request.getParameter("txtspec") : "null";
		String awr=(request.getParameter("txtawr") != null) ? request.getParameter("txtawr") : "null";
		
		if(title!=null && artist!=null && director!=null && lang!=null&& type!=null && gen!=null && format!=null && price!=null)
		{
		
		Music ob=new Music();
		ob.setArtist(artist);
		ob.setAvailability_home(avail2);
		ob.setAvailability_online(avail1);
		ob.setAwr(awr);
		ob.setCover(cover);
		ob.setDirector(director);
		ob.setDiscount(discount);
		ob.setFormat(format);
		ob.setGenre(gen);
		ob.setLanguage(lang);
		ob.setPrice(price);
		ob.setSepcs(spec);
		ob.setTitle(title);
		ob.setTrack(track);
		ob.setType(type);
		
		AdministratorDAO d=new AdministratorDAO();
		try {
			String s = d.addmusic(ob);
			if(s.equals("SUCCESS"))
				request.getRequestDispatcher("/Admin.jsp").forward(request, response);
			else
			{
				request.setAttribute("errMessage",s);
				request.getRequestDispatcher("/add.jsp").forward(request, response);
			}
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		}
		else{
			request.setAttribute("errMessage","All are mandatory field");
			request.getRequestDispatcher("/add.jsp").forward(request, response);
			
			
		}
		}//adding to Database
		
		if(request.getParameter("action").equalsIgnoreCase("delete"))
		{
			String title=(request.getParameter("txttitle") != null) ? request.getParameter("txttitle") : "null";
			if(title != null)
			{	
				String s;
				AdministratorDAO d = new AdministratorDAO();
				try {
					s = d.deletemusic(title);
					if(s.equals("SUCCESS"))
						request.getRequestDispatcher("/Admin.jsp").forward(request, response);
					else
					{
						request.setAttribute("errMessage",s);
						request.getRequestDispatcher("/delete.jsp").forward(request, response);
					}
				} 
				catch (ClassNotFoundException e) 
				{
					// TODO Auto-generated catch block
					//e.printStackTrace();
				}
			}
			else
			{
				request.setAttribute("errMessage","All are mandatory field");
				request.getRequestDispatcher("/delete.jsp").forward(request, response);			
			}
		}//deleting from Database
		
		if(request.getParameter("action").equalsIgnoreCase("signup"))
		{
			String fname=(request.getParameter("fname") != null) ? request.getParameter("fname") : "null";
			String lname=(request.getParameter("lname") != null) ? request.getParameter("lname") : "null";
			String email=(request.getParameter("email") != null) ? request.getParameter("email") : "null";
			String phone=(request.getParameter("phno") != null) ? request.getParameter("phno") : "null";
			String pwd=(request.getParameter("pwd") != null) ? request.getParameter("pwd") : "null";
			if(fname != null || lname != null || email != null || phone != null || pwd != null)
			{	
				User ob = new User();
				ob.setFirstname(fname);
				ob.setLastname(lname);
				ob.setEmail(email);
				ob.setPhoneno(phone);
				ob.setPwd(pwd);
				AdministratorDAO d = new AdministratorDAO();
				String s = d.adduser(ob);
				if(s.equals("SUCCESS"))
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				else
				{
					request.setAttribute("errMessage",s);
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				}
			}
			else
			{
				request.setAttribute("errMessage","All are mandatory field");
				request.getRequestDispatcher("/Signup.jsp").forward(request, response);			
			}
		}//user addition
		
		if(request.getParameter("action").equalsIgnoreCase("login"))
		{
			String email=(request.getParameter("email") != null) ? request.getParameter("email") : "null";
			String pwd=(request.getParameter("pwd") != null) ? request.getParameter("pwd") : "null";
			if(email != null)
			{	
				AdministratorDAO d = new AdministratorDAO();
				String s = d.chkuser(email, pwd);
				if(s.equals("SUCCESS"))
					request.getRequestDispatcher("/Admin.jsp").forward(request, response);
				else
				{
					request.setAttribute("errMessage",s);
					request.getRequestDispatcher("/Login.jsp").forward(request, response);
				}
			}
			else
			{
				request.setAttribute("errMessage","All are mandatory field");
				request.getRequestDispatcher("/Login.jsp").forward(request, response);			
			}
		}
	}		
		
}

