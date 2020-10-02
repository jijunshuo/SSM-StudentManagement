package com.kgc.service.impl;

import com.kgc.mapper.StudentinfoMapper;
import com.kgc.pojo.Studentinfo;
import com.kgc.service.StudentinfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentinfoServiceImpl implements StudentinfoService {
    @Resource
    StudentinfoMapper studentinfoMapper;

    @Override
    public List<Studentinfo> selectAll() {
        List<Studentinfo> studentinfos = studentinfoMapper.selectByExample(null);
        return studentinfos;
    }

    @Override
    public Studentinfo selectByid(Integer id) {
        Studentinfo studentinfo = studentinfoMapper.selectByPrimaryKey(id);
        return studentinfo;
    }

    @Override
    public int upd(Studentinfo studentinfo) {
        int i = studentinfoMapper.updateByPrimaryKeySelective(studentinfo);
        return i;
    }
}
