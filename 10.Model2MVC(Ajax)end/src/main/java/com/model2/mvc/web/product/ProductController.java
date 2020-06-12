package com.model2.mvc.web.product;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.product.ProductService;


// 상품등록 컨트롤
@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	///Field
	@Autowired
	@Qualifier("productServiceImpl")
		private ProductService productService;
		
		public ProductController() {
			System.out.println("상품관리 컨트롤러:"+this.getClass());
		}
		
		@Value("#{commonProperties['pageUnit']}")
		//@Value("#{commonProperties['pageUnit'] ?: 3}")
		int pageUnit;
		
		@Value("#{commonProperties['pageSize']}")
		//@Value("#{commonProperties['pageSize'] ?: 2}")
		int pageSize;

		
	
		//@RequestMapping("/addProductView.do")
		@RequestMapping(value="addProductView" , method=RequestMethod.GET)
		public String addProductView() throws Exception {
			
			System.out.println("/product/addProductView:GET");
			
			return "redirect:/product/addProductView.jsp";
		}
	
		
		//@RequestMapping("/addProduct.do")
		@RequestMapping(value="addProduct" , method=RequestMethod.POST)
		//public String addProduct( @ModelAttribute("product") Product product ,HttpServletRequest request) throws Exception {
		public String addProduct( @ModelAttribute("product") Product product ,MultipartHttpServletRequest request) throws Exception {
		

			System.out.println("/product/addProduct: POST");
			
			
			
			///////////////////////////
			Map<String, MultipartFile> files = ((MultipartRequest) request).getFileMap();
		    CommonsMultipartFile cmf = (CommonsMultipartFile) files.get("file");
		    
		    if (cmf.getSize()!=0) {
		    String path ="C:\\Users\\miel0\\git\\10MVC2\\10.Model2MVCShop(Ajax)test용2\\WebContent\\images\\uploadFiles"+cmf.getOriginalFilename();
		    
		    product.setFileName(cmf.getOriginalFilename());
		    
		    File f = new File(path);
		    
		    System.out.println("f?="+f);
		    // 파일 업로드 처리 완료.
		    cmf.transferTo(f);
		    }
			//////////////////////////////
			
			product.setManuDate((product.getManuDate()).replace("-",""));
			productService.addProduct(product);
			
			return "forward:/product/addProduct.jsp";
			}
		
		
		//@RequestMapping("/getProduct.do")						//===========================OK
		//public String getProduct( @RequestParam("prodNo") int prodNo , Model model , @RequestParam("menu") String menu, HttpServletRequest request, HttpServletResponse response) throws Exception {
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
		
		//@RequestMapping("/listProduct.do")					============================OK
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
		
		//@RequestMapping("/updateProductView.do")
		//public String updateProductView( @RequestParam("prodNo") int prodNo , Model model ) throws Exception{ 	=================수정ok
		@RequestMapping(value="updateProductView" , method=RequestMethod.GET)
		public String updateProductView( @RequestParam("prodNo") int prodNo , Model model ) throws Exception{

			System.out.println("/product/updateProduct : GET");
			Product product = productService.getProduct(prodNo);
			model.addAttribute("product", product);
			
			return "forward:/product/updateProductView.jsp";
		}
		
		//@RequestMapping("/updateProduct.do")	
		@RequestMapping( value="updateProduct" , method= RequestMethod.POST)
			public String updateProduct( @ModelAttribute("product") Product product , Model model) throws Exception{

			System.out.println("/product/updateProduct : POST");
				//product.setManuDate((product.getManuDate()).replace("-",""));
				productService.updateProduct(product);
				model.addAttribute("product", product);
				
				
				return "redirect:/product/getProduct?prodNo="+product.getProdNo();
			}
			
		
		
		
	

		
		
		
		
}
