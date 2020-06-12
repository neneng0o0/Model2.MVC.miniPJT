package com.model2.mvc.web.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.product.ProductService;


// 상품관리 컨트롤
@RestController
@RequestMapping("/product/*")
public class ProductRestController {
	
	///Field
	@Autowired
	@Qualifier("productServiceImpl")
		private ProductService productService;
		
		public ProductRestController() {
			System.out.println("상품관리 레스트컨트롤러:"+this.getClass());
		}
		
		@Value("#{commonProperties['pageUnit']}")
		int pageUnit;
		@Value("#{commonProperties['pageSize']}")
		int pageSize;
		
		
		
		/////////////////////////////////////////////////시도중 이게 맞는건지 아닌건지
		

		/*
		@RequestMapping(value="json/addProductView" , method=RequestMethod.GET)
		public void addProductView(@RequestBody Product product) throws Exception {
			
			System.out.println("나올까요/product/json/addProductView:GET");


		}
		
		
		@RequestMapping( value="json/getProduct/{prodName}" , method =RequestMethod.GET)

	
		
		@RequestMapping(value="json/addProduct" , method= {RequestMethod.POST,RequestMethod.GET})
		public Product addProduct( @RequestBody Product product ) throws Exception {

			System.out.println("상품관리 json나와랏ㅠ/product/addProduct: POST");
			
			product.setManuDate((product.getManuDate()).replace("-",""));
			
			productService.addProduct(product);
			
			return product;
		}
		
		
		@RequestMapping( value="json/getProduct/{prodName}" , method =RequestMethod.GET)
								//getProduct의 하위 패스{prodName}까지 잡는다?
		public Product getProduct( @PathVariable("prodName") int prodNo) throws Exception {
			
			System.out.println("상품관리 json나와랏/product/getProduct: GET");

			return productService.getProduct(prodNo);
			
		}

		*/
		
		@RequestMapping(value="json/addProduct" , method= {RequestMethod.POST,RequestMethod.GET})
		public Product addProduct( @RequestBody Product product ,HttpServletRequest request) throws Exception {

			System.out.println("상품관리 json나와랏ㅠ/product/addProduct: POST");
			
			product.setManuDate((product.getManuDate()).replace("-",""));
			productService.addProduct(product);
			
			return product;
		}
		
		
		
		///////////////////////////////////////////////////////주소창에 value값 넣으면 이 메서드가 뜬느데 그럼 맞는건가...?
		
		@RequestMapping( value="json/listProduct")
		public Map<String, Object> listProduct( @ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{
			
			System.out.println("제이슨떠줘/product/listProduct : GET/POST");
			
			if(search.getCurrentPage() ==0 ){
				search.setCurrentPage(1);
			}
			search.setPageSize(pageSize);
	
			Map<String , Object> map=productService.getProductList(search);
			System.out.println("map="+map);
			
			Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
			System.out.println(resultPage);
			
			model.addAttribute("list", map.get("list"));
			model.addAttribute("resultPage", resultPage);
			model.addAttribute("search", search);
			
			return map;
		}
		
		
		//////////////////////////////////////////////
		
		
				@RequestMapping( value="json/getProduct/{prodNo}" , method =RequestMethod.GET)
				//getProduct의 하위 패스{prodName}까지 잡는다?
					public Product getProduct( @PathVariable("prodNo") int prodNo) throws Exception {
					
					System.out.println("상품관리 json나와랏/product/getProduct: GET");
					
					return productService.getProduct(prodNo);
					
					}
							

		
	
		/*
		@RequestMapping(value="addProductView" , method=RequestMethod.GET)
		public String addProductView() throws Exception {
			
			System.out.println("/product/addProductView:GET");
			
			return "redirect:/product/addProductView.jsp";
		}
	
		
		
		@RequestMapping(value="addProduct" , method=RequestMethod.POST)
		public String addProduct( @ModelAttribute("product") Product product ,HttpServletRequest request) throws Exception {

			System.out.println("/product/addProduct.: POST");
			
			product.setManuDate((product.getManuDate()).replace("-",""));
			productService.addProduct(product);
			
			return "forward:/product/addProduct.jsp"; 
		}
	
		@RequestMapping( value="getProduct" , method =RequestMethod.GET)
		public String getProduct( @RequestParam("prodNo") int prodNo , Model model , @RequestParam("menu") String menu, HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			System.out.println("/product/getProduct: GET");

			Product product = productService.getProduct(prodNo);
			model.addAttribute("product", product);
			
			if(menu.equals("manage")) {
				return "forward:/product/updateProductView.jsp";
			}
			else if(menu.equals("search")) {
				return "forward:/product/getProduct.jsp";
			}
			return "forward:/product/updateProductView.jsp";
			
		}
		
		@RequestMapping( value="listProduct")
		public String listProduct( @ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{
			
			System.out.println("/product/listProduct : GET/POST");
			
			if(search.getCurrentPage() ==0 ){
				search.setCurrentPage(1);
			}
			search.setPageSize(pageSize);
	
			Map<String , Object> map=productService.getProductList(search);
			
			Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
			System.out.println(resultPage);
			
			model.addAttribute("list", map.get("list"));
			model.addAttribute("resultPage", resultPage);
			model.addAttribute("search", search);
			
			return "forward:/product/listProduct.jsp";
		}
		
		@RequestMapping(value="updateProductView" , method=RequestMethod.GET)
		public String updateProductView( @RequestParam("prodNo") int prodNo , Model model ) throws Exception{

			System.out.println("/product/updateProduct : GET");
			Product product = productService.getProduct(prodNo);
			model.addAttribute("product", product);
			
			return "forward:/product/updateProductView.jsp";
		}
		
		@RequestMapping( value="updateProduct" , method=RequestMethod.POST)
			public String updateProduct( @ModelAttribute("product") Product product , Model model) throws Exception{

			System.out.println("/product/updateProduct : POST");
				product.setManuDate((product.getManuDate()).replace("-",""));
				productService.updateProduct(product);
				model.addAttribute("product", product);
				
				
				return "forward:/product/getProduct.jsp";
			}
			*/
		
}
