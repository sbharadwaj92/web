package com.tcs.ilp.service;

import java.util.ArrayList;

import com.tcs.ilp.bean.ProductBean;
import com.tcs.ilp.dao.ProductDao;
public class ProductService
{
	ProductDao productDao = new ProductDao();
	public String insertProductService(ProductBean product)
	{
		return productDao.insertProduct(product);
	}
	public ArrayList<ProductBean> displayAllProductsService()
	{
		return productDao.displayAllProducts();
	}
	public ProductBean displayProductService(String id)
	{
		return productDao.displayProduct(id);
	}
	public boolean updateProductService(ProductBean product)
	{
		return productDao.updateProduct(product);
	}
	public boolean deleteProductService(String productId)
	{
		return productDao.deleteProduct(productId);
	}
}