package com.music.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.model.Music;
import com.music.service.MusicImageService;

@Controller
@RequestMapping("/musicImage")
public class MusicImageController {
	@Autowired
	MusicImageService musicImageService;

	@RequestMapping("/radio.do")
	@ResponseBody
	public  ArrayList<Map<String, String>> radio() {
		List<Music> list = new ArrayList<Music>();
		list = musicImageService.SelectMusicImage();
		
		ArrayList<Map<String, String>> listmap = new ArrayList<Map<String, String>>();
	
		Iterator<Music> it = list.iterator();
		while (it.hasNext()) {
			Map<String, String> map = new HashMap<String, String>();
			Music str = it.next();
			map.put("musicname", str.getMusicname());
			map.put("imageurl", str.getImage().getImageurl());
			listmap.add(map);
			System.out.println(str.getMusicname());
		}
		System.out.println(listmap);
		return listmap;

	}

}
