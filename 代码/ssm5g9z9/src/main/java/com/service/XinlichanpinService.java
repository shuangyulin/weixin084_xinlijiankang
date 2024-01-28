package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XinlichanpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XinlichanpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XinlichanpinView;


/**
 * 心理产品
 *
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
public interface XinlichanpinService extends IService<XinlichanpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XinlichanpinVO> selectListVO(Wrapper<XinlichanpinEntity> wrapper);
   	
   	XinlichanpinVO selectVO(@Param("ew") Wrapper<XinlichanpinEntity> wrapper);
   	
   	List<XinlichanpinView> selectListView(Wrapper<XinlichanpinEntity> wrapper);
   	
   	XinlichanpinView selectView(@Param("ew") Wrapper<XinlichanpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XinlichanpinEntity> wrapper);
   	
}

