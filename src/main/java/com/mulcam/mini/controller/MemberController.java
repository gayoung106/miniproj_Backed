package com.mulcam.mini.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mulcam.mini.dto.Member;
import com.mulcam.mini.dto.Upload;
import com.mulcam.mini.service.MemberService;
import com.mulcam.mini.service.UploadService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	UploadService uploadService;
	
	@Autowired
	HttpSession session;
	
	@GetMapping(value="/")
	public String main2() {
		return "main2";
	}
	
	@GetMapping(value="/login")
	public String login() {
		return "login";
	}
	
	@GetMapping(value="/join")
	public String join() {
		return "join";
	}
	
	@GetMapping(value="/profilecard")
	public String profilecard() {
		return "profilecard";
	}

//	@GetMapping(value="/profile3")
//	public ModelAndView profile3() throws Exception {
//		ModelAndView mav = new ModelAndView();
//		if(session.getAttribute("id")==null) {
//			mav.setViewName("login");
//		} else {
//			// 로그인 된 상태
////			 String[] imageList = uploadService.queryByID((String) session.getAttribute("id"));
////			 String[] imageList =  {"ab", "bb"};
////			System.out.println(imageList.length);
////			System.out.println(imageList[0]);
//			
//			mav.addObject("list", imageList);
//			mav.setViewName("profile3");
//		}
//		
//		return mav;
//	}
	@GetMapping("/profile")
	public ResponseEntity<List<Upload>> allLets(@ModelAttribute Upload upload) {
		ResponseEntity<List<Upload>> result = null;
		try {
			upload.setId((String)session.getAttribute("id"));
			List<Upload> lets = uploadService.allUploadInfo(upload);
			result = new ResponseEntity<List<Upload>>(lets, HttpStatus.OK);
		} catch(Exception e) {
			result = new ResponseEntity<List<Upload>>(new ArrayList<Upload>(), HttpStatus.BAD_REQUEST);
		}
		return result;
	}
	
	@GetMapping(value="/profile3")
	public String profile3() {
		if(session.getAttribute("id")==null) {
			return "login";
		}
		return "profile3";
	}

	
	@PostMapping(value="/join")
	public String join(@ModelAttribute Member member) {
		try {
			memberService.join(member);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam(value="id") String id, @RequestParam(value="password") String password,Model model){
		try {
			memberService.login(id, password);
			session.setAttribute("id", id);
			model.addAttribute("login","true");
			return "main2";
		} catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("login","false");
			return "login";
		}
		
	}

	@ResponseBody
	   @PostMapping(value="/memoverlap")
	   public String memoverlap(@RequestParam(value="id") String id) {
	      boolean overlap = false;
	      try {
	         overlap = memberService.memOverlap(id);
	      } catch(Exception e) {
	      }
	      return String.valueOf(overlap);
	   }

	
	@GetMapping("/logout")
	public String logout(Model model) {
//		model.addAttribute("cpage", "login");
		session.removeAttribute("id");
		return "login";
	}
	@ResponseBody
	@PostMapping("/memberoverlap")
	public String memberOverlap(@RequestParam(value="id") String id) {
		boolean overlap = true;
		try {
			overlap = memberService.idOverlap(id);
		} catch(Exception e) {
		}
		return String.valueOf(overlap);
	}
	

	
}
