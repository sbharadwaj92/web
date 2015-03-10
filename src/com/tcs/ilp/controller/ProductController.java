package com.tcs.ilp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tcs.ilp.bean.ProductBean;
import com.tcs.ilp.service.ProductService;
import com.tcs.ilp.teacher.bean.Teacher;
import com.tcs.ilp.teacher.service.TeacherService;

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
		if("add".equals(action));
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
			product.setPrice(Double.parseDouble(price));
			product.setQuantity(Integer.parseInt(quantity));
			product.setStatus(status);
			
			ProductService productSvc = new ProductService();
			int id=productSvc.insertProductService(product);
			if (id>0)
			{
				  request.setAttribute("status", "Teacher has been added successfully");	
				  RequestDispatcher rd=request.getRequestDispatcher("/jsp/result.jsp");
				  rd.forward(request, response);
			}
		}
	}
}
