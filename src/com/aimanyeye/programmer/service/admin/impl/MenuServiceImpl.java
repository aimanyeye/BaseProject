package com.aimanyeye.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aimanyeye.programmer.dao.admin.MenuDao;
import com.aimanyeye.programmer.entity.admin.Menu;
import com.aimanyeye.programmer.service.admin.MenuService;
/**
 * 菜单管理实现类
 * @author 艾曼爷爷
 *
 */
@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuDao menuDao;

	@Override
	public int add(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.add(menu);
	}
	
	@Override
	public List<Menu> findList(Map<String, Object> queryMap){
		return menuDao.findList(queryMap);
	}

	@Override
	public List<Menu> findTopList() {
		// TODO Auto-generated method stub
		return menuDao.findTopList();
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return menuDao.getTotal(queryMap);
	}

	@Override
	public int edit(Menu menu) {
		// TODO Auto-generated method stub
		return menuDao.edit(menu);
	}

	@Override
	public int delete(Long id) {
		// TODO Auto-generated method stub
		return menuDao.delete(id);
	}

	@Override
	public List<Menu> findChildrenList(Long parentId) {
		// TODO Auto-generated method stub
		return menuDao.findChildrenList(parentId);
	}

	@Override
	public List<Menu> findListByIds(String ids) {
		// TODO Auto-generated method stub
		return menuDao.findListByIds(ids);
	}

}
