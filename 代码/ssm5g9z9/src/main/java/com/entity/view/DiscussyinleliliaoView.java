package com.entity.view;

import com.entity.DiscussyinleliliaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 音乐理疗评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-15 09:44:56
 */
@TableName("discussyinleliliao")
public class DiscussyinleliliaoView  extends DiscussyinleliliaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussyinleliliaoView(){
	}
 
 	public DiscussyinleliliaoView(DiscussyinleliliaoEntity discussyinleliliaoEntity){
 	try {
			BeanUtils.copyProperties(this, discussyinleliliaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
