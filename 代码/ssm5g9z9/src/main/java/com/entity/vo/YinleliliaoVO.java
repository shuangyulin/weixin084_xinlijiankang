package com.entity.vo;

import com.entity.YinleliliaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 音乐理疗
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
public class YinleliliaoVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 音频
	 */
	
	private String yinpin;
		
	/**
	 * 封面
	 */
	
	private String fengmian;
		
	/**
	 * 效果
	 */
	
	private String xiaoguo;
		
	/**
	 * 详细说明
	 */
	
	private String xiangxishuoming;
				
	
	/**
	 * 设置：音频
	 */
	 
	public void setYinpin(String yinpin) {
		this.yinpin = yinpin;
	}
	
	/**
	 * 获取：音频
	 */
	public String getYinpin() {
		return yinpin;
	}
				
	
	/**
	 * 设置：封面
	 */
	 
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
				
	
	/**
	 * 设置：效果
	 */
	 
	public void setXiaoguo(String xiaoguo) {
		this.xiaoguo = xiaoguo;
	}
	
	/**
	 * 获取：效果
	 */
	public String getXiaoguo() {
		return xiaoguo;
	}
				
	
	/**
	 * 设置：详细说明
	 */
	 
	public void setXiangxishuoming(String xiangxishuoming) {
		this.xiangxishuoming = xiangxishuoming;
	}
	
	/**
	 * 获取：详细说明
	 */
	public String getXiangxishuoming() {
		return xiangxishuoming;
	}
			
}
