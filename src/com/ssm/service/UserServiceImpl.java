package com.ssm.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.beans.User;
import com.ssm.dao.IUserDao;

@Service("userService")
public class UserServiceImpl implements IUserService {
	
	@Resource(name="IUserDao")
	private IUserDao dao;
	public void setDao(IUserDao dao) {
		this.dao = dao;
	}
	public void addUser(User user) {
		dao.insertUser(user);
	}
	public User queryUser(User user) {
		return dao.queryUser(user);
	}
	public void updateInfo(User user) {
		dao.updateUser(user);
	}
	public User queryUserByName(String name) {
		return dao.queryUserByName(name);
	}

}
