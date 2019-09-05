package com.ischoolbar.programmer.service.admin;

import com.ischoolbar.programmer.entity.admin.Disease;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface DiseaseService {


    /**
     * 按用户名查找疾病信息
     * @param username 用户名
     * @return 返回疾病信息列表
     */
    List<Disease> findByUserName(String username);

    /**
     * 按疾病ID删除疾病信息
     * @param id 疾病ID
     * @return 返回是否删除成功
     */
    int deleteById(int id);

    /**
     * 添加疾病信息
     * @param disease 疾病信息类
     * @return 返回是否添加成功
     */
    int addInfo(Disease disease);
}
