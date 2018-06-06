package com.music.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.music.model.Music;

@Repository("musicImageMapper")
public interface MusicImageMapper {
	
	List<Music> SelectMusicImage();
}
