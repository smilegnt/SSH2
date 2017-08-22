package com.yzpc.biz;

import java.util.List;

import com.yzpc.bean.User;
import com.yzpc.dao.UserDao;
import com.yzpc.dao.UserDaoImpl;

public class UserBizImpl implements UserBiz {
	
	UserDao userDao=new UserDaoImpl();
	
	@Override
	public List<User> getAllUser() {
		return userDao.getAllUser();
	}

	@Override
	public List<User> getBySchoolUser(String likeSchool) {
		return userDao.getBySchoolUser(likeSchool);
	}

	@Override
	public List<User> getByNameUser(String likeName) {
		return userDao.getByNameUser(likeName);
	}

	@Override
	public User getUserById(int id) {
		return userDao.getUserById(id);
	}

	@Override
	public int deleteUser(int id) {
		return userDao.deleteUser(id);
	}

	@Override
	public int addUser(User u) {
		return userDao.addUser(u);
	}

	@Override
	public int updateUser(User u) {
		return userDao.updateUser(u);
	}

}
