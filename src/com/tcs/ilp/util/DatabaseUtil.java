package com.tcs.ilp.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseUtil
{
	private static final String driver ="oracle.jdbc.driver.OracleDriver";
	private static final String dbURL ="jdbc:oracle:thin:@intvmoradb02:1521:ORAJAVADB";
	private static final String dbUserName ="PJ01TEST_TJA142";
	private static final String dbPassword ="tcstvm";
	
	public static Connection getConnection(){
		Connection con=null;
		try
		{
			Class.forName(driver);
			con=DriverManager.getConnection(dbURL, dbUserName, dbPassword);
			System.out.println("Connection Established "+con);
		}
		catch(ClassNotFoundException e)
		{
			System.out.println(e);
		}
		catch (SQLException e)
		{
			System.out.println(e);
		}
		return con;
	}	
	public static void closeStatement(PreparedStatement pst)
	{
		if(pst!=null)
		{
			try
			{
				pst.close();
			}
			catch (SQLException e)
			{
				System.out.println(e);
			}
		}
	}
	public static void closeConection(Connection con)
	{
		if(con!=null)
		{
			try
			{
				con.close();
			}
			catch (SQLException e)
			{
				System.out.println(e);
			}
		}
	}
}