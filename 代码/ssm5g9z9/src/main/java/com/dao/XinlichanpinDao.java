package com.dao;

import com.entity.XinlichanpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XinlichanpinVO;
import com.entity.view.XinlichanpinView;


/**
 * 心理产品
 * 
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
public interface XinlichanpinDao extends BaseMapper<XinlichanpinEntity> {
	
	List<XinlichanpinVO> selectListVO(@Param("ew") Wrapper<XinlichanpinEntity> wrapper);
	
	XinlichanpinVO selectVO(@Param("ew") Wrapper<XinlichanpinEntity> wrapper);
	
	List<XinlichanpinView> selectListView(@Param("ew") Wrapper<XinlichanpinEntity> wrapper);

	List<XinlichanpinView> selectListView(Pagination page,@Param("ew") Wrapper<XinlichanpinEntity> wrapper);
	
	XinlichanpinView selectView(@Param("ew") Wrapper<XinlichanpinEntity> wrapper);
	
}
