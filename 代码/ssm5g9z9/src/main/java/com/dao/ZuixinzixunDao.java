package com.dao;

import com.entity.ZuixinzixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZuixinzixunVO;
import com.entity.view.ZuixinzixunView;


/**
 * 最新资讯
 * 
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
public interface ZuixinzixunDao extends BaseMapper<ZuixinzixunEntity> {
	
	List<ZuixinzixunVO> selectListVO(@Param("ew") Wrapper<ZuixinzixunEntity> wrapper);
	
	ZuixinzixunVO selectVO(@Param("ew") Wrapper<ZuixinzixunEntity> wrapper);
	
	List<ZuixinzixunView> selectListView(@Param("ew") Wrapper<ZuixinzixunEntity> wrapper);

	List<ZuixinzixunView> selectListView(Pagination page,@Param("ew") Wrapper<ZuixinzixunEntity> wrapper);
	
	ZuixinzixunView selectView(@Param("ew") Wrapper<ZuixinzixunEntity> wrapper);
	
}
