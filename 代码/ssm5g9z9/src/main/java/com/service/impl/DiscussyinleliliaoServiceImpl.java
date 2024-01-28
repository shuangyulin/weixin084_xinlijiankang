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


import com.dao.DiscussyinleliliaoDao;
import com.entity.DiscussyinleliliaoEntity;
import com.service.DiscussyinleliliaoService;
import com.entity.vo.DiscussyinleliliaoVO;
import com.entity.view.DiscussyinleliliaoView;

@Service("discussyinleliliaoService")
public class DiscussyinleliliaoServiceImpl extends ServiceImpl<DiscussyinleliliaoDao, DiscussyinleliliaoEntity> implements DiscussyinleliliaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussyinleliliaoEntity> page = this.selectPage(
                new Query<DiscussyinleliliaoEntity>(params).getPage(),
                new EntityWrapper<DiscussyinleliliaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussyinleliliaoEntity> wrapper) {
		  Page<DiscussyinleliliaoView> page =new Query<DiscussyinleliliaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussyinleliliaoVO> selectListVO(Wrapper<DiscussyinleliliaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussyinleliliaoVO selectVO(Wrapper<DiscussyinleliliaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussyinleliliaoView> selectListView(Wrapper<DiscussyinleliliaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussyinleliliaoView selectView(Wrapper<DiscussyinleliliaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
