package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YinleliliaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YinleliliaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YinleliliaoView;


/**
 * 音乐理疗
 *
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
public interface YinleliliaoService extends IService<YinleliliaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YinleliliaoVO> selectListVO(Wrapper<YinleliliaoEntity> wrapper);
   	
   	YinleliliaoVO selectVO(@Param("ew") Wrapper<YinleliliaoEntity> wrapper);
   	
   	List<YinleliliaoView> selectListView(Wrapper<YinleliliaoEntity> wrapper);
   	
   	YinleliliaoView selectView(@Param("ew") Wrapper<YinleliliaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YinleliliaoEntity> wrapper);
   	
}

