package com.music.dao;

import com.music.model.Image;

public interface ImageMapper {
    int insert(Image record);

    int insertSelective(Image record);
}