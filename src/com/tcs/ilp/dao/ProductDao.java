package com.tcs.ilp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tcs.ilp.bean.ProductBean;
import com.tcs.ilp.util.DatabaseUtil;

public class ProductDao
{
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	public int insertProduct(ProductBean product)
	{
		int id = 0;
		try
		{
			con = DatabaseUtil.getConnection();
			String sql = "INSERT INTO Product_834002 VALUES (sproduct_834002.nextVal,?,?,?,?,?,?)";
			pst = con.prepareStatement(sql);
			pst.setString(1, product.getProductName());
			pst.setString(2, product.getDescription());
			pst.setString(3, product.getCategory());
			pst.setDouble(4, product.getPrice());
			pst.setInt(5, product.getQuantity());
			pst.setString(6, product.getStatus());
			int result = pst.executeUpdate();
			
			if (result > 0)
			{
				System.out.println("inserted");
				sql = "SELECT sproduct_834002.CurrVal as ID from dual";
				pst = con.prepareStatement(sql);
				rs = pst.executeQuery();
				if(rs.next())
				{
					id=rs.getInt("ID");
				}
			}
		}
		catch (SQLException e)
		{
			System.out.println(e);
		}
		finally
		{
			DatabaseUtil.closeStatement(pst);
			DatabaseUtil.closeConection(con);
		}
		return id;
	}
}