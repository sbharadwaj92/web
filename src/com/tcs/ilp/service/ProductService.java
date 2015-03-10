package com.tcs.ilp.service;

import com.tcs.ilp.bean.ProductBean;
import com.tcs.ilp.dao.ProductDao;
public class ProductService
{
	
	ProductDao productDao = new ProductDao();

	public int insertProductService(ProductBean product)
	{
		return productDao.insertProduct(product);
	}
	
}