package crudApplication.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import crudApplication.dao.productDao;
import crudApplication.model.Product;

@Controller
public class MainController {
	@Autowired
	private productDao pd;
	@RequestMapping(path="/",method=RequestMethod.GET)
	public String home(Model m) {
		m.addAttribute("title","Index");

		List<Product> p=pd.getProducts();
		m.addAttribute("pList", p);
		return "index";
	}
	
	@RequestMapping(path="/addProduct",method=RequestMethod.GET)
	public String addProduct(Model m) {
		m.addAttribute("title","Add product");
		return "addProductForm";
	}
	
	@RequestMapping(path="/handleProduct",method=RequestMethod.POST)
	public String handleProduct(@ModelAttribute Product p) {
		
		pd.createProduct(p);
		return "redirect:"+"/";
	}
	
	@RequestMapping(path="/delete/{productId}")
	public String deleteHandler(@PathVariable("productId") int id) {
		pd.deleteProduct(id);
		return "redirect:"+"/";
	}
	
	@RequestMapping(path="/update/{productId}")
	public String updateHandler(@PathVariable("productId") int id,Model mv) {
		
		Product p = pd.getProduct(id);
		
		mv.addAttribute("title","Update product");

		mv.addAttribute("product",p);
		
		
		return "update_form";
	}
	
	
}
