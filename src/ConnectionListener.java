import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ConnectionListener implements ServletContextListener 
{

	@Override
	public void contextInitialized(ServletContextEvent sce)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankapp","root","12345");
			System.out.println("Connected");
			ServletContext context = sce.getServletContext();
			String query = "select * from accountinfo where userid=? and password=?";
			PreparedStatement pslogin = con.prepareStatement(query);
			context.setAttribute("login",pslogin);
			PreparedStatement psbalance = con.prepareStatement("select amount from accountinfo where accountno=?");
			context.setAttribute("balance",psbalance);
			PreparedStatement psdeposit = con.prepareStatement("update accountinfo set amount=amount+? where accountno=?");
			context.setAttribute("deposit",psdeposit);

			PreparedStatement pswithdraw = con.prepareStatement("update accountinfo set amount=amount-? where accountno=?");
			context.setAttribute("withdraw",pswithdraw);
			PreparedStatement psaccount = con.prepareStatement("select * from accountinfo where accountno=?");
			context.setAttribute("accountcheck", psaccount);
			
			PreparedStatement pschange = con.prepareStatement("update accountinfo set password=? where accountno=?");
			context.setAttribute("password",pschange);
			
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
	
}
