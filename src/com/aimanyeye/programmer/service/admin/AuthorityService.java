package com.aimanyeye.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.aimanyeye.programmer.entity.admin.Authority;

/**
 * 权限service接口
 * @author 艾曼爷爷
 *
 */
@Service
public interface AuthorityService {
	public int add(Authority authority);
	public int deleteByRoleId(Long roleId);
	public List<Authority> findListByRoleId(Long roleId);
}
