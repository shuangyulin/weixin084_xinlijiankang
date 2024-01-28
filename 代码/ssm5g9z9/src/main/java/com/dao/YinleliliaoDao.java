package com.dao;

import com.entity.YinleliliaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YinleliliaoVO;
import com.entity.view.YinleliliaoView;


/**
 * 音乐理疗
 * 
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
public interface YinleliliaoDao extends BaseMapper<YinleliliaoEntity> {
	
	List<YinleliliaoVO> selectListVO(@Param("ew") Wrapper<YinleliliaoEntity> wrapper);
	
	YinleliliaoVO selectVO(@Param("ew") Wrapper<YinleliliaoEntity> wrapper);
	
	List<YinleliliaoView> selectListView(@Param("ew") Wrapper<YinleliliaoEntity> wrapper);

	List<YinleliliaoView> selectListView(Pagination page,@Param("ew") Wrapper<YinleliliaoEntity> wrapper);
	
	YinleliliaoView selectView(@Param("ew") Wrapper<YinleliliaoEntity> wrapper);
	
}
