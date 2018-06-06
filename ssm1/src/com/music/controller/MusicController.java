package com.music.controller;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.music.model.Image;
import com.music.service.ImageService;

@Controller
@RequestMapping("/music")
public class MusicController {
	@Autowired
	private ImageService imageService;
	@Autowired
	private Image image;

	@RequestMapping("/upload.do")
	@ResponseBody
	public Map<String, String> musicUpload(@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request, ModelMap model) {
		Map<String, String> map = new HashMap<String, String>();
		String path = "F:\\upload";
		String fileName = new Date().getTime() + ".jpg";
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		String imageurl = path + "\\" + fileName;
		// 保存
		try {
			file.transferTo(targetFile);
			image.setImageurl(imageurl);
			image.setImageid(3);
			imageService.insert(image);
			map.put("fileName", fileName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*
		 * model.addAttribute("fileUrl",
		 * request.getContextPath()+"/static/upload/"+fileName);
		 */

		return map;

	}

	@RequestMapping("/moreUpload.do")
	@ResponseBody
	public Map<String, String> moreUpload(
			@RequestParam(value = "fileselect[]", required = false) MultipartFile fileselect[],
			HttpServletRequest request, ModelMap model) {
		for (MultipartFile file2 : fileselect) {
			Map<String, String> map = new HashMap<String, String>();
			String path = "F:\\upload";
			String fileName = new Date().getTime() + ".jpg";
			File targetFile = new File(path, fileName);
			if (!targetFile.exists()) {
				targetFile.mkdirs();
			}
			String imageurl = path + "\\" + fileName;

			// 保存
			try {
				file2.transferTo(targetFile);
				image.setImageurl(imageurl);
				image.setImageid(3);
				imageService.insert(image);
				map.put("fileName", fileName);
			} catch (Exception e) {
				e.printStackTrace();
			}

			/*
			 * model.addAttribute("fileUrl",
			 * request.getContextPath()+"/static/upload/"+fileName);
			 */

			return map;

		}
		return null;
	}
}
