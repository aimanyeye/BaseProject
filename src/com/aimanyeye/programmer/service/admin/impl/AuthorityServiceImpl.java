package com.aimanyeye.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aimanyeye.programmer.dao.admin.AuthorityDao;
import com.aimanyeye.programmer.entity.admin.Authority;
import com.aimanyeye.programmer.service.admin.AuthorityService;
/**
 * 权限实现类 service
 * @author 艾曼爷爷
 *
 */
@Service
public class AuthorityServiceImpl implements AuthorityService {
	
	@Autowired
	private AuthorityDao authorityDao;

	@Override
	public int add(Authority authority) {
		// TODO Auto-generated method stub
		return authorityDao.add(authority);
	}

	@Override
	public int deleteByRoleId(Long roleId) {
		// TODO Auto-generated method stub
		return authorityDao.deleteByRoleId(roleId);
	}

	@Override
	public List<Authority> findListByRoleId(Long roleId) {
		// TODO Auto-generated method stub
		return authorityDao.findListByRoleId(roleId);
	}

}
