package com.music.controller;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.model.User;
import com.music.service.UserService;
import com.music.util.ValidateCode;
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("/login.do")
   public String login(String username,String userpwd,String validateCode,HttpServletRequest request) {
		String code = (String) request.getSession().getAttribute("validateCode");
		Map<String,Object> map=new HashMap<>();
	    map.put("username", username);
	    map.put("userpwd", userpwd);
	    User user=userService.selectByNameAndUserpwd(map);
      
	    if (user!=null&&validateCode.equals(code)) {
		
		return "index" ;
		
	    }
	    return "fail";
     }
	@RequestMapping("/register.do")
   public String register(String username,String userpwd,String validateCode,HttpServletRequest request) {
		String code = (String) request.getSession().getAttribute("validateCode");
		if (validateCode.equals(code)) {
	    User user=new User();
	    user.setMusicid(null);
	    user.setName(null);
	    user.setTouxiang(null);
	    user.setUsername(username);
	    user.setUserpwd(userpwd);
	    user.setUserid(null);
	    userService.insertSelective(user);
		Map<String,Object> map=new HashMap<>();
	    map.put("username", username);
	    map.put("userpwd", userpwd);
	    User user1=userService.selectByNameAndUserpwd(map);
      
	    if (user1!=null) {
		return "index" ;
		
	    }	
		}
	    return "fail";
     }
	 /**
	  * 生成验证码
	  * @param request
	  * @param response
	  * @throws IOException
	  * @ValidateCode.generateTextCode(验证码字符类型,验证码长度,需排除的特殊字符)
	  * @ValidateCode.generateImageCode(文本验证码,图片宽度,图片高度,干扰线的条数,字符的高低位置是否随机,图片颜色,字体颜色,干扰线颜色)
	  */
	 @RequestMapping("/validateCode.do")
	 public void validateCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
	  response.setHeader("Cache-Control", "no-cache");
	  String verifyCode = ValidateCode.generateTextCode(ValidateCode.TYPE_NUM_LOWER, 4, null);
	  request.getSession().setAttribute("validateCode", verifyCode);
	  response.setContentType("image/jpeg");
	  BufferedImage bim = ValidateCode.generateImageCode(verifyCode, 90, 30, 5, true, Color.WHITE, Color.BLUE, null);
	  ImageIO.write(bim, "JPEG", response.getOutputStream());
	 }
}
