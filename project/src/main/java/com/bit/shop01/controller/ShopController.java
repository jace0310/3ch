package com.bit.shop01.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.shop01.model.productTypeDao;
import com.bit.shop01.model.entity.productVo;


@Controller
public class ShopController {
	
@Autowired
SqlSession sqlSession;

	
	@RequestMapping("/outer")
	public String outHome(Model model) throws SQLException {
		model.addAttribute("alist"
				, sqlSession.getMapper(productTypeDao.class).selectAll());
		
		return "outHome";
	}
	
	@RequestMapping("/outer/detail")
	public String detail(Model model) throws SQLException {
		model.addAttribute("reviewlist"
				, sqlSession.getMapper(productTypeDao.class).reviewAll());
		
		return "outDetail";
	}
	
//	@RequestMapping("/outer/detail")
//	public String outDetail(@RequestParam("idx") int productNum,Model model) throws SQLException{
//		model.addAttribute("reviewlist"
//				, sqlSession.getMapper(productTypeDao.class).reviewAll(productNum));
//		
//		return "outDetail";
//	}
	
	
	@RequestMapping("/top")
	public String top(Model model,HttpServletRequest req) throws SQLException {
		return "topDetail";
	}
	
	
	@RequestMapping("/bottom")
	public String bottom(Model model,HttpServletRequest req) throws SQLException {
			return "botDetail";
	}

	
	@RequestMapping("/dress")
	public String dress(Model model,HttpServletRequest req) throws SQLException {
	return "dreDetail";
	}

	
	@RequestMapping("/shoeacc")
	public String shoeacc(Model model,HttpServletRequest req) throws SQLException {
		return "sho&accDetail";
	}

	@RequestMapping("/sale")
	public String sale(Model model,HttpServletRequest req) throws SQLException {
		return "saleDetail";
	}
	
	@RequestMapping("/join")
	public String join(Model model,HttpServletRequest req) throws SQLException {
		return "join";
	}
	
	//review 
	
	@RequestMapping("/rev_bbs")
	public String reviewlist(Model model) throws SQLException {
		model.addAttribute("reivewlist"
				, sqlSession.getMapper(productTypeDao.class).reviewAll());
		
		return "review";
	}
	
	@RequestMapping("/rwdetail")
	public void detail(@RequestParam("idx") int reviewNum,Model model) throws SQLException{
		model.addAttribute("review"
				, sqlSession.getMapper(productTypeDao.class).reviewOne(reviewNum));
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String edit(@ModelAttribute productVo review) throws SQLException {
		sqlSession.getMapper(productTypeDao.class).reviewUpdate(review);
		return "redirect:/rev_bbs";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String del(int idx) throws SQLException {
		sqlSession.getMapper(productTypeDao.class).reviewDelete(idx);
		return "redirect:/rev_bbs";
	}

	   
}

	

