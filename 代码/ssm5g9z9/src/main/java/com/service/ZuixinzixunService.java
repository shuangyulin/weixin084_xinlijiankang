package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZuixinzixunEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZuixinzixunVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZuixinzixunView;


/**
 * 最新资讯
 *
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
public interface ZuixinzixunService extends IService<ZuixinzixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZuixinzixunVO> selectListVO(Wrapper<ZuixinzixunEntity> wrapper);
   	
   	ZuixinzixunVO selectVO(@Param("ew") Wrapper<ZuixinzixunEntity> wrapper);
   	
   	List<ZuixinzixunView> selectListView(Wrapper<ZuixinzixunEntity> wrapper);
   	
   	ZuixinzixunView selectView(@Param("ew") Wrapper<ZuixinzixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZuixinzixunEntity> wrapper);
   	
}

