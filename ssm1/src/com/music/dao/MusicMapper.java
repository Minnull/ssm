package com.music.dao;

import com.music.model.Music;

public interface MusicMapper {
    int deleteByPrimaryKey(Integer musicid);

    int insert(Music record);

    int insertSelective(Music record);

    Music selectByPrimaryKey(Integer musicid);

    int updateByPrimaryKeySelective(Music record);

    int updateByPrimaryKey(Music record);
}