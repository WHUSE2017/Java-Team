package com.lxinet.jeesns.dao.system;

import com.lxinet.jeesns.dao.common.IBaseDao;
import com.lxinet.jeesns.model.system.ScoreRule;
import org.apache.ibatis.annotations.Param;


public interface IScoreRuleDao extends IBaseDao<ScoreRule> {

    int enabled(@Param("id") int id);
}
