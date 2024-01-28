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


import com.dao.XinlichanpinDao;
import com.entity.XinlichanpinEntity;
import com.service.XinlichanpinService;
import com.entity.vo.XinlichanpinVO;
import com.entity.view.XinlichanpinView;

@Service("xinlichanpinService")
public class XinlichanpinServiceImpl extends ServiceImpl<XinlichanpinDao, XinlichanpinEntity> implements XinlichanpinService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XinlichanpinEntity> page = this.selectPage(
                new Query<XinlichanpinEntity>(params).getPage(),
                new EntityWrapper<XinlichanpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XinlichanpinEntity> wrapper) {
		  Page<XinlichanpinView> page =new Query<XinlichanpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XinlichanpinVO> selectListVO(Wrapper<XinlichanpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XinlichanpinVO selectVO(Wrapper<XinlichanpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XinlichanpinView> selectListView(Wrapper<XinlichanpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XinlichanpinView selectView(Wrapper<XinlichanpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
