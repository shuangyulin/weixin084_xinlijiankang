package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussyinleliliaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussyinleliliaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussyinleliliaoView;


/**
 * 音乐理疗评论表
 *
 * @author 
 * @email 
 * @date 2021-05-15 09:44:56
 */
public interface DiscussyinleliliaoService extends IService<DiscussyinleliliaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussyinleliliaoVO> selectListVO(Wrapper<DiscussyinleliliaoEntity> wrapper);
   	
   	DiscussyinleliliaoVO selectVO(@Param("ew") Wrapper<DiscussyinleliliaoEntity> wrapper);
   	
   	List<DiscussyinleliliaoView> selectListView(Wrapper<DiscussyinleliliaoEntity> wrapper);
   	
   	DiscussyinleliliaoView selectView(@Param("ew") Wrapper<DiscussyinleliliaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussyinleliliaoEntity> wrapper);
   	
}

