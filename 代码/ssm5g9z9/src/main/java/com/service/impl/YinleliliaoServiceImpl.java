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


import com.dao.YinleliliaoDao;
import com.entity.YinleliliaoEntity;
import com.service.YinleliliaoService;
import com.entity.vo.YinleliliaoVO;
import com.entity.view.YinleliliaoView;

@Service("yinleliliaoService")
public class YinleliliaoServiceImpl extends ServiceImpl<YinleliliaoDao, YinleliliaoEntity> implements YinleliliaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YinleliliaoEntity> page = this.selectPage(
                new Query<YinleliliaoEntity>(params).getPage(),
                new EntityWrapper<YinleliliaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YinleliliaoEntity> wrapper) {
		  Page<YinleliliaoView> page =new Query<YinleliliaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YinleliliaoVO> selectListVO(Wrapper<YinleliliaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YinleliliaoVO selectVO(Wrapper<YinleliliaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YinleliliaoView> selectListView(Wrapper<YinleliliaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YinleliliaoView selectView(Wrapper<YinleliliaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
