package com.tcs.ilp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tcs.ilp.bean.ProductBean;
import com.tcs.ilp.util.DatabaseUtil;

public class ProductDao
{
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	public String insertProduct(ProductBean product)
	{
		String id = null;
		try
		{
			con = DatabaseUtil.getConnection();
			String sql = "INSERT INTO product_834002 VALUES ('PROD_'||sproduct_834002.nextVal,?,?,?,?,?,?)";
			pst = con.prepareStatement(sql);
			pst.setString(1, product.getProductName());
			pst.setString(2, product.getDescription());
			pst.setString(3, product.getCategory());
			pst.setFloat(4, product.getPrice());
			pst.setInt(5, product.getQuantity());
			pst.setString(6, product.getStatus());
			
			int result = pst.executeUpdate();
			
			if (result > 0)
			{
				System.out.println("inserted");
				sql = "SELECT sproduct_834002.CurrVal from dual";
				pst = con.prepareStatement(sql);
				rs = pst.executeQuery();
				if(rs.next())
				{
					id="PROD_"+ rs.getInt(1);
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
	public ArrayList<ProductBean> displayAllProducts()
	{
		ArrayList<ProductBean> pList = new ArrayList<ProductBean>();
		try
		{
			con = DatabaseUtil.getConnection();
			String sql = "SELECT * from product_834002";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next())
			{
				ProductBean product = new ProductBean();
				
				product.setProductId(rs.getString(1));
				product.setProductName(rs.getString(2));
				product.setDescription(rs.getString(3));
				product.setCategory(rs.getString(4));
				product.setPrice(rs.getFloat(5));
				product.setQuantity(rs.getInt(6));
				product.setStatus(rs.getString(7));
				
				pList.add(product);
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
		return pList;
	}
	public ProductBean displayProduct(String id)
	{
		ProductBean product=null;
		try
		{
			con = DatabaseUtil.getConnection();
			String sql = "SELECT * from product_834002 where id=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			
			if(rs.next())
			{
				product = new ProductBean();
				
				product.setProductId(rs.getString(1));
				product.setProductName(rs.getString(2));
				product.setDescription(rs.getString(3));
				product.setCategory(rs.getString(4));
				product.setPrice(rs.getFloat(5));
				product.setQuantity(rs.getInt(6));
				product.setStatus(rs.getString(7));
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
		return product;
	}
	public boolean updateProduct(ProductBean product)
	{
		boolean flag = false;
		try
		{	
			con = DatabaseUtil.getConnection();
			String sql = "update product_834002 set name=?, category=?, price=?, quantity=?, status=? where id=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, product.getProductName());
			pst.setString(2, product.getCategory());
			pst.setFloat(3, product.getPrice());
			pst.setInt(4, product.getQuantity());
			pst.setString(5, product.getStatus());
			pst.setString(6, product.getProductId());
			System.out.println(product.getProductId());
			
			int result = pst.executeUpdate();
			
			if (result > 0)
			{
				System.out.println("Updated");
				flag=true;
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
		return flag;
	}
	public boolean deleteProduct(String productId)
	{
		System.out.println("inside update");
		boolean flag = false;
		try
		{	
			con = DatabaseUtil.getConnection();
			String sql = "delete from product_834002 where id=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, productId);
			int result = pst.executeUpdate();
			if (result > 0)
			{
				System.out.println("Updated");
				flag=true;
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
		return flag;
	}
}