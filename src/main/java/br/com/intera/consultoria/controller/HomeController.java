package br.com.intera.consultoria.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	/*@Autowired
	private ProductDAO productDAO;*/
	
	@RequestMapping("/")
	//@Cacheable(value="produtosHome")
    public ModelAndView index() {
        System.out.println("Getting in the home of Coding House");
       // List<Product> products = productDAO.list();
        ModelAndView modelAndView = new ModelAndView("home");
       // modelAndView.addObject("products", products);
        return modelAndView;
    }
}
