package com.aimanyeye.programmer.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.aimanyeye.programmer.entity.admin.Authority;
import com.aimanyeye.programmer.entity.admin.Log;

/**
 * 日志service接口
 * @author 艾曼爷爷
 *
 */
@Service
public interface LogService {
	public int add(Log log);
	public int add(String content);
	public List<Log> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
	public int delete(String ids);
	
}
