package com.music.service;

import java.util.Map;

import com.music.model.User;

public interface UserService {
	  int deleteByPrimaryKey(Integer userid);

	    int insert(User record);

	    int insertSelective(User record);

	    User selectByPrimaryKey(Integer userid);
	    
	    User selectByNameAndUserpwd(Map<String, Object>  map);

	    int updateByPrimaryKeySelective(User record);

	    int updateByPrimaryKey(User record);
}
