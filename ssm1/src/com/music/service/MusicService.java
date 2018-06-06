package com.music.service;

import com.music.model.Music;

public interface MusicService {
	int deleteByPrimaryKey(Integer musicid);

    int insert(Music record);

    int insertSelective(Music record);

    Music selectByPrimaryKey(Integer musicid);

    int updateByPrimaryKeySelective(Music record);

    int updateByPrimaryKey(Music record);
}
