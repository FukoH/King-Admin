package com.kevinwong.module.sys.mapper;

import com.kevinwong.module.sys.entity.ScheduleJobLogEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 定时任务日志
 * 
 * @author Eastascend <EastascendWang@gmail.com>
 * @date 2019-06-05 10:09:10
 */
@Mapper
public interface ScheduleJobLogMapper extends BaseMapper<ScheduleJobLogEntity> {
	
}