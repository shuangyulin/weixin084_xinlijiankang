package com.dao;

import com.entity.DiscussxinlichanpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussxinlichanpinVO;
import com.entity.view.DiscussxinlichanpinView;


/**
 * 心理产品评论表
 * 
 * @author 
 * @email 
 * @date 2021-05-15 09:44:56
 */
public interface DiscussxinlichanpinDao extends BaseMapper<DiscussxinlichanpinEntity> {
	
	List<DiscussxinlichanpinVO> selectListVO(@Param("ew") Wrapper<DiscussxinlichanpinEntity> wrapper);
	
	DiscussxinlichanpinVO selectVO(@Param("ew") Wrapper<DiscussxinlichanpinEntity> wrapper);
	
	List<DiscussxinlichanpinView> selectListView(@Param("ew") Wrapper<DiscussxinlichanpinEntity> wrapper);

	List<DiscussxinlichanpinView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussxinlichanpinEntity> wrapper);
	
	DiscussxinlichanpinView selectView(@Param("ew") Wrapper<DiscussxinlichanpinEntity> wrapper);
	
}
