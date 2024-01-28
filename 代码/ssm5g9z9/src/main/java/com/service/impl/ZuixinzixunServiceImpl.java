package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZuixinzixunDao;
import com.entity.ZuixinzixunEntity;
import com.service.ZuixinzixunService;
import com.entity.vo.ZuixinzixunVO;
import com.entity.view.ZuixinzixunView;

@Service("zuixinzixunService")
public class ZuixinzixunServiceImpl extends ServiceImpl<ZuixinzixunDao, ZuixinzixunEntity> implements ZuixinzixunService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZuixinzixunEntity> page = this.selectPage(
                new Query<ZuixinzixunEntity>(params).getPage(),
                new EntityWrapper<ZuixinzixunEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZuixinzixunEntity> wrapper) {
		  Page<ZuixinzixunView> page =new Query<ZuixinzixunView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZuixinzixunVO> selectListVO(Wrapper<ZuixinzixunEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZuixinzixunVO selectVO(Wrapper<ZuixinzixunEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZuixinzixunView> selectListView(Wrapper<ZuixinzixunEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZuixinzixunView selectView(Wrapper<ZuixinzixunEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
