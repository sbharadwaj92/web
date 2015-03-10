package com.tcs.ilp.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tcs.ilp.bean.ProductBean;
import com.tcs.ilp.service.ProductService;

public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProductController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doProcess(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doProcess(request,response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String action = request.getParameter("action");
		if("add".equals(action))
		{
			String productName = request.getParameter("pname");
			String description = request.getParameter("pdesc");
			String category = request.getParameter("pcat");
			String price = request.getParameter("pprice");
			String quantity = request.getParameter("ptot");
			String status = request.getParameter("pradio");
			
			ProductBean product = new ProductBean();
			
			product.setProductName(productName);
			product.setDescription(description);
			product.setCategory(category);
			product.setPrice(Float.parseFloat(price));
			product.setQuantity(Integer.parseInt(quantity));
			product.setStatus(status);
			
			ProductService productSvc = new ProductService();
			
			String id=productSvc.insertProductService(product);
			
			request.setAttribute("id", id);
			request.setAttribute("result","insert");
			RequestDispatcher rd=request.getRequestDispatcher("/jsp/result.jsp");
			rd.forward(request, response);
		}
		else if("allProducts".equals(action))
		{
			ArrayList<ProductBean> pList = new ArrayList<ProductBean>();
			ProductService productSvc = new ProductService();
			pList = productSvc.displayAllProductsService();

			request.setAttribute("listproduct", pList);
			RequestDispatcher rd=request.getRequestDispatcher("/jsp/allProducts.jsp");
			rd.forward(request, response);
		}
		else if("update".equals(action) || "delete".equals(action))
		{
			String id = request.getParameter("id");
			ProductBean product = new ProductBean();
			ProductService productSvc = new ProductService();
			product = productSvc.displayProductService(id);
			request.setAttribute("prod", product);
			if("update".equals(action))
			{
				request.setAttribute("action", "update");
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/updateProduct.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("action", "delete");
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/viewProduct.jsp");
				rd.forward(request, response);
			}
		}
		else if("updateProduct".equals(action))
		{
			String productId = request.getParameter("pid");
			String productName = request.getParameter("pname");
			String description = request.getParameter("pdesc");
			String category = request.getParameter("pcat");
			String price = request.getParameter("pprice");
			String quantity = request.getParameter("ptot");
			String status = request.getParameter("pradio");
			
			ProductBean product = new ProductBean();
			
			product.setProductId(productId);
			product.setProductName(productName);
			product.setDescription(description);
			product.setCategory(category);
			product.setPrice(Float.parseFloat(price));
			product.setQuantity(Integer.parseInt(quantity));
			product.setStatus(status);
			
			
			ProductService productSvc = new ProductService();
			boolean flag=productSvc.updateProductService(product);
			if(flag)
			{
				request.setAttribute("prod", product);
				request.setAttribute("action", "update");
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/viewProduct.jsp");
				rd.forward(request, response);
			}
		}
		else if("deleteProduct".equals(action))
		{
			String productId = request.getParameter("id");
			ProductService productSvc = new ProductService();
			boolean flag= productSvc.deleteProductService(productId);
			if(flag)
			{
				request.setAttribute("id", productId);
				request.setAttribute("result","delete");
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/result.jsp");
				rd.forward(request, response);
			}
		}
	}
}
