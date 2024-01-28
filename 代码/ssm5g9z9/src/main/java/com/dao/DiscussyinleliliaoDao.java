package com.dao;

import com.entity.DiscussyinleliliaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussyinleliliaoVO;
import com.entity.view.DiscussyinleliliaoView;


/**
 * 音乐理疗评论表
 * 
 * @author 
 * @email 
 * @date 2021-05-15 09:44:56
 */
public interface DiscussyinleliliaoDao extends BaseMapper<DiscussyinleliliaoEntity> {
	
	List<DiscussyinleliliaoVO> selectListVO(@Param("ew") Wrapper<DiscussyinleliliaoEntity> wrapper);
	
	DiscussyinleliliaoVO selectVO(@Param("ew") Wrapper<DiscussyinleliliaoEntity> wrapper);
	
	List<DiscussyinleliliaoView> selectListView(@Param("ew") Wrapper<DiscussyinleliliaoEntity> wrapper);

	List<DiscussyinleliliaoView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussyinleliliaoEntity> wrapper);
	
	DiscussyinleliliaoView selectView(@Param("ew") Wrapper<DiscussyinleliliaoEntity> wrapper);
	
}
