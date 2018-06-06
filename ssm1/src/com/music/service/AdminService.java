package com.music.service;

import com.music.model.Admin;

public interface AdminService {
	   int deleteByPrimaryKey(Integer adminid);

	    int insert(Admin record);

	    int insertSelective(Admin record);

	    Admin selectByPrimaryKey(Integer adminid);

	    int updateByPrimaryKeySelective(Admin record);

	    int updateByPrimaryKey(Admin record);
}
