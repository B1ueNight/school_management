package com.greenart.school_management.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.greenart.school_management.mapper.DashboardMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DashboardService {
    @Autowired DashboardMapper mapper;

    public Map<String, Object> getCount() {
        List<Integer> deptCntList = new ArrayList<Integer>();
        deptCntList.add(mapper.getTotalDepartmentCnt());
        deptCntList.add(mapper.getActiveDepartmentCnt());
        deptCntList.add(mapper.getDeactiveDepartmentCnt());

        List<Integer> teacherCntList = new ArrayList<Integer>();
        teacherCntList.add(mapper.getTotalTeacherCnt());
        teacherCntList.add(mapper.getWorkTeacherCnt());
        teacherCntList.add(mapper.getDayoffTeacherCnt());

        List<Integer> stuCntList = new ArrayList<Integer>();
        stuCntList.add(mapper.getTotalStudentCnt());
        stuCntList.add(mapper.getAttendStudentCnt());
        stuCntList.add(mapper.getDayoffStudentCnt());
        stuCntList.add(mapper.getLeaveStudentCnt());

        List<Integer> subCntList = new ArrayList<Integer>();
        subCntList.add(mapper.getTotalSubjectCnt());
        subCntList.add(mapper.getActiveSubjectCnt());
        subCntList.add(mapper.getDeactiveSubjectCnt());
        subCntList.add(mapper.getFinishSubjectCnt());

        Map<String, Object> map = new LinkedHashMap<String, Object>();
        map.put("department", deptCntList);
        map.put("teacher", teacherCntList);
        map.put("student", stuCntList);
        map.put("subject", subCntList);
        return map;
    }

    public Map<String,Object> getUpdateDate() {
        Map<String, Object> resultMap = new LinkedHashMap<String, Object>();

        resultMap.put("department", mapper.getDepartmentUpdateDate());
        resultMap.put("teacher", mapper.getTeacherUpdateDate());

        return resultMap;
    }
    
}
