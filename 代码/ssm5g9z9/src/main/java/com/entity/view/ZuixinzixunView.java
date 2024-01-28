package com.entity.view;

import com.entity.ZuixinzixunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 最新资讯
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
@TableName("zuixinzixun")
public class ZuixinzixunView  extends ZuixinzixunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZuixinzixunView(){
	}
 
 	public ZuixinzixunView(ZuixinzixunEntity zuixinzixunEntity){
 	try {
			BeanUtils.copyProperties(this, zuixinzixunEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
