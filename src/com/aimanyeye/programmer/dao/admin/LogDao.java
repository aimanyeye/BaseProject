package com.aimanyeye.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import com.aimanyeye.programmer.entity.admin.Authority;
import com.aimanyeye.programmer.entity.admin.Log;

/**
 * 系统日志管理dao
 * @author 艾曼爷爷
 *
 */
public interface LogDao {
	public int add(Log log);
	public List<Log> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
	public int delete(String ids);
}
