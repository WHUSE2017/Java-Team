package com.lxinet.jeesns.service.group;

import com.lxinet.jeesns.core.dto.ResponseModel;
import com.lxinet.jeesns.core.model.Page;
import com.lxinet.jeesns.model.group.Group;
import com.lxinet.jeesns.model.member.Member;

import java.util.List;


public interface IGroupService {

    Group findById(int id);

    ResponseModel save(Member loginMember, Group group);

    ResponseModel update(Member loginMember, Group group);

    ResponseModel delete(Member loginMember, int id);

    ResponseModel listByPage(int status, Page page, String key);

    ResponseModel getPersonIdByName(String personName,Page page);
    
    ResponseModel listByPageByMemberId(int status, Page page, String key,String memberId);
    
    ResponseModel follow(Member loginMember, Integer groupId,int type);

    ResponseModel changeStatus(int id);

    List<Group> listByCustom(int status, int num, String sort);

}
