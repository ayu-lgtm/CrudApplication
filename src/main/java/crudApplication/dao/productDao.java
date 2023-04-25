package crudApplication.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import crudApplication.model.Product;

@Component
public class productDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	
	//create product
	@Transactional
	public void createProduct(Product p) {
		this.hibernateTemplate.saveOrUpdate(p);
	}
	
	
	//get all products
	public List<Product> getProducts(){
		List<Product> pro=this.hibernateTemplate.loadAll(Product.class);
		return pro;
	}
	
	//delete single products
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(p);
	}
	
	//get the single product
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class,pid);	
	}
	
}
