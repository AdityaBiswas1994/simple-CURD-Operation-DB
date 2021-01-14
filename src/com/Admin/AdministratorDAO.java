package com.Admin;

import java.sql.*;

public class AdministratorDAO {
	public Connection con = null;
	public PreparedStatement ps = null;
	public String addmusic(Music r) throws ClassNotFoundException{
		try{
			if(r.getTitle()!=null){
				con=DbConnection.getConnection();
				ps=con.prepareStatement("insert into musicDb6(music_id,title,artist,m_director,language,type_music,genre,download,homedelivery,format,price,discount,image,track,specification,awards) values(mus_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1,r.getTitle());
				ps.setString(2,r.getArtist());
				ps.setString(3, r.getDirector());
				ps.setString(4, r.getLanguage());
				ps.setString(5, r.getType());
				ps.setString(6,r.getGenre());
				ps.setString(7,r.getAvailability_online());
				ps.setString(8,r.getAvailability_home());
				ps.setString(9,r.getFormat());
				ps.setString(10,r.getPrice());
				ps.setString(11,r.getDiscount());
				ps.setString(12,r.getCover());
				ps.setString(13,r.getTrack());
				ps.setString(14,r.getSepcs());
				ps.setString(15,r.getAwr());
				int i=ps.executeUpdate();
				if(i>0){
					return "SUCCESS";
				}
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		
		return "Something went wrong....!";
		
	}
	
	public String deletemusic(String r) throws ClassNotFoundException{
		try{
			if(r != null){
				con = DbConnection.getConnection();
				ps = con.prepareStatement("DELETE FROM MUSICDB6 WHERE TITLE = ?");
				ps.setString(1,r);
				int i = ps.executeUpdate();
				if(i > 0)
				{
					return "SUCCESS";
				}
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		
		return "Something went wrong....!";
	}
	
	public String adduser(User ob)
	{
		try{
			if(ob.getEmail() != null){
				con=DbConnection.getConnection();
				ps=con.prepareStatement("insert into usertb(firstname, lastname, email, phone, passwd) values(?,?,?,?,?)");
				ps.setString(1, ob.getFirstname());
				ps.setString(2, ob.getLastname());
				ps.setString(3, ob.getEmail());
				ps.setString(4, ob.getPhoneno());
				ps.setString(5, ob.getPwd());
				int i=ps.executeUpdate();
				if(i>0){
					return "SUCCESS";
				}
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return "Something went wrong....!";
	}
	
	public String chkuser(String email, String pwd)
	{
		try{
			String email1 = null;
			String pwd1 = null;
			if(email != " "){
				con=DbConnection.getConnection();
				ps=con.prepareStatement("select EMAIL, PASSWD from usertb where email = '"+email+"'");
				ResultSet result = ps.executeQuery();
				while (result.next()) 
				{
				email1 = result.getString("EMAIL");
				pwd1 = result.getString("PASSWD");
				if(email.equalsIgnoreCase(email1) && (pwd.compareTo(pwd1) == 0))
				{
					return "SUCCESS";
				}
				}
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return "Something went wrong....!";
	}
	
	/*public static void main(String args[])
	{
		String email = "adityabiswasantu@gmail.com";
		String pwd = "Aditya@1994";
		AdministratorDAO d = new AdministratorDAO();
		String s = d.chkuser(email, pwd);
		System.out.println(s);
	}*/
}
