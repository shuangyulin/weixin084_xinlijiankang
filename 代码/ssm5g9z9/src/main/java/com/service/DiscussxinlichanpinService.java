package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussxinlichanpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussxinlichanpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussxinlichanpinView;


/**
 * 心理产品评论表
 *
 * @author 
 * @email 
 * @date 2021-05-15 09:44:56
 */
public interface DiscussxinlichanpinService extends IService<DiscussxinlichanpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussxinlichanpinVO> selectListVO(Wrapper<DiscussxinlichanpinEntity> wrapper);
   	
   	DiscussxinlichanpinVO selectVO(@Param("ew") Wrapper<DiscussxinlichanpinEntity> wrapper);
   	
   	List<DiscussxinlichanpinView> selectListView(Wrapper<DiscussxinlichanpinEntity> wrapper);
   	
   	DiscussxinlichanpinView selectView(@Param("ew") Wrapper<DiscussxinlichanpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussxinlichanpinEntity> wrapper);
   	
}

