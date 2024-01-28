package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 音乐理疗
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-05-15 09:44:55
 */
@TableName("yinleliliao")
public class YinleliliaoEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YinleliliaoEntity() {
		
	}
	
	public YinleliliaoEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 标题
	 */
					
	private String biaoti;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：标题
	 */
	public void setBiaoti(String biaoti) {
		this.biaoti = biaoti;
	}
	/**
	 * 获取：标题
	 */
	public String getBiaoti() {
		return biaoti;
	}
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
