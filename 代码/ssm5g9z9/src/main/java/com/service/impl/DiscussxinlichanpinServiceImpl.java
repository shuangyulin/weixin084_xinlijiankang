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


import com.dao.DiscussxinlichanpinDao;
import com.entity.DiscussxinlichanpinEntity;
import com.service.DiscussxinlichanpinService;
import com.entity.vo.DiscussxinlichanpinVO;
import com.entity.view.DiscussxinlichanpinView;

@Service("discussxinlichanpinService")
public class DiscussxinlichanpinServiceImpl extends ServiceImpl<DiscussxinlichanpinDao, DiscussxinlichanpinEntity> implements DiscussxinlichanpinService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussxinlichanpinEntity> page = this.selectPage(
                new Query<DiscussxinlichanpinEntity>(params).getPage(),
                new EntityWrapper<DiscussxinlichanpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussxinlichanpinEntity> wrapper) {
		  Page<DiscussxinlichanpinView> page =new Query<DiscussxinlichanpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussxinlichanpinVO> selectListVO(Wrapper<DiscussxinlichanpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussxinlichanpinVO selectVO(Wrapper<DiscussxinlichanpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussxinlichanpinView> selectListView(Wrapper<DiscussxinlichanpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussxinlichanpinView selectView(Wrapper<DiscussxinlichanpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
