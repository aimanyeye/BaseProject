package com.aimanyeye.programmer.dao.admin;

import java.util.List;

import com.aimanyeye.programmer.entity.admin.Authority;

/**
 * 权限管理dao
 * @author 艾曼爷爷
 *
 */
public interface AuthorityDao {
	public int add(Authority authority);
	public int deleteByRoleId(Long roleId);
	public List<Authority> findListByRoleId(Long roleId);
}
