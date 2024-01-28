package com.entity.view;

import com.entity.YinleliliaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 音乐理疗
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
@TableName("yinleliliao")
public class YinleliliaoView  extends YinleliliaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YinleliliaoView(){
	}
 
 	public YinleliliaoView(YinleliliaoEntity yinleliliaoEntity){
 	try {
			BeanUtils.copyProperties(this, yinleliliaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
