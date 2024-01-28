package com.dao;

import com.entity.ChanpinfenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChanpinfenleiVO;
import com.entity.view.ChanpinfenleiView;


/**
 * 产品分类
 * 
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
public interface ChanpinfenleiDao extends BaseMapper<ChanpinfenleiEntity> {
	
	List<ChanpinfenleiVO> selectListVO(@Param("ew") Wrapper<ChanpinfenleiEntity> wrapper);
	
	ChanpinfenleiVO selectVO(@Param("ew") Wrapper<ChanpinfenleiEntity> wrapper);
	
	List<ChanpinfenleiView> selectListView(@Param("ew") Wrapper<ChanpinfenleiEntity> wrapper);

	List<ChanpinfenleiView> selectListView(Pagination page,@Param("ew") Wrapper<ChanpinfenleiEntity> wrapper);
	
	ChanpinfenleiView selectView(@Param("ew") Wrapper<ChanpinfenleiEntity> wrapper);
	
}
