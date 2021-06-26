<%@page import="oracle.net.aso.u"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import= "java.sql.DriverManager" %>
<%@page import= "java.sql.PreparedStatement" %>

<%! Connection conn;
Statement st;
PreparedStatement pst;
ResultSet rs;
%>
<%
RequestDispatcher rd=null;
try
{
	Class.forName("oracle.jdbc.OracleDriver");
 	conn = DriverManager.getConnection
	     ("jdbc:oracle:thin:@//localhost:1521/XE", "SYSTEM", "Prafulla123");
    out.write("connected");
    st=conn.createStatement();
    session.setAttribute("title2","User Registration Status");
    session.setAttribute("operation","Registration");
    String uname=request.getParameter("uname");
    String uemail=request.getParameter("uemail");
    String uadd=request.getParameter("uadd");
    String uage=request.getParameter("uage");
    String umobile=request.getParameter("umobile");
    
    
    if(!uname.equals("") && !uemail.equals("") && !uadd.equals("")   && !uage.equals("")  && !umobile.equals(""))
    {
    
    //rs=st.executeQuery("select * from reg_users where uname=?");
    pst=conn.prepareStatement("select upper(uname) from regusers2 where uname=?");
    pst.setString(1,uname.toUpperCase());
    rs=pst.executeQuery();
    boolean b=rs.next();
    
   if(b==true)
    {
    	out.write("");
    rd=request.getRequestDispatcher("/existed.jsp");
    rd.forward(request,response);
    }
	else
	{
	pst=conn.prepareStatement("insert into regusers2 values(?,?,?,?,?)");
	pst.setString(1, uname.toUpperCase());
	pst.setString(2, uemail);
	pst.setString(3, uadd);
	pst.setString(4, uage);
	pst.setString(5, umobile);
	int status=pst.executeUpdate();
	if(status>0)
	{
	rd=request.getRequestDispatcher("/success.jsp");
	rd.forward(request,response);
	}
	else
	{
		out.write("insertion fail");
	}
	}
    }
   else
   {
	   rd=request.getRequestDispatcher("/fauilar.jsp");
		rd.forward(request,response);
   }
}
catch(Exception e)
{
	out.write("inside catch");
	rd=request.getRequestDispatcher("/fauilar.jsp");
	rd.forward(request,response);
	
}

%>
