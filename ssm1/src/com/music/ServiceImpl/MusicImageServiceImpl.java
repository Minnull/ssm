package com.music.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.dao.MusicImageMapper;
import com.music.model.Music;
import com.music.service.MusicImageService;
@Service("musicImageService")
public class MusicImageServiceImpl implements MusicImageService {
    @Autowired
   MusicImageMapper MusicImageMapper;
    
	public 	List<Music> SelectMusicImage() {
		return MusicImageMapper.SelectMusicImage();
	}

}
