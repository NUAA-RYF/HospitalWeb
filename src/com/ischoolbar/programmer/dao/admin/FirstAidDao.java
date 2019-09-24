package com.ischoolbar.programmer.dao.admin;

import com.ischoolbar.programmer.entity.admin.FirstAid;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FirstAidDao {

    /**
     * 按用户名查找急救信息
     * @param username 用户名
     * @return         返回信息
     */
    List<FirstAid> findFirstAidListByUserName(String username);

    /**
     * 添加急救信息
     * @param firstAid 急救信息
     * @return         返回信息
     */
    int insertFirstAid(FirstAid firstAid);

    /**
     * 按ID删除急救信息
     * @param id ID
     * @return   返回信息
     */
    int deleteFirstAidById(int id);

    /**
     * 按急救信息处理状态查询
     * @return   返回信息
     */
    List<FirstAid> findFirstAidListByState(int state);

    /**
     * 按急救ID更新急救状态
     * @return   返回信息
     */
    int updateFirstAidByID(FirstAid firstAid);
}
