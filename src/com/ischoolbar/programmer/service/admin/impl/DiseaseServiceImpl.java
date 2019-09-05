package com.ischoolbar.programmer.service.admin.impl;

import com.ischoolbar.programmer.dao.admin.DiseaseDao;
import com.ischoolbar.programmer.entity.admin.Disease;
import com.ischoolbar.programmer.service.admin.DiseaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DiseaseServiceImpl implements DiseaseService {

    @Autowired
    private DiseaseDao diseaseDao;
    /**
     * 按用户名查找疾病信息
     * @param username 用户名
     * @return 返回疾病信息列表
     */
    @Override
    public List<Disease> findByUserName(String username) {
        return diseaseDao.findByUserName(username);
    }

    /**
     * 按疾病ID删除疾病信息
     * @param id 疾病ID
     * @return 返回是否删除成功
     */
    @Override
    public int deleteById(int id) {
        return diseaseDao.deleteById(id);
    }

    /**
     * 添加疾病信息
     * @param disease 疾病信息类
     * @return 返回是否添加成功
     */
    @Override
    public int addInfo(Disease disease) {
        return diseaseDao.addInfo(disease);
    }
}
