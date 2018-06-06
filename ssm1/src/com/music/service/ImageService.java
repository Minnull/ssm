package com.music.service;

import com.music.model.Image;

public interface ImageService {
    int insert(Image record);

    int insertSelective(Image record);
}