<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%@include file="/WEB-INF/includes/header.jsp"%>
    <link rel="stylesheet" href="/assets/css/index.css">
    <script>
        $(function() {
            $(".main_menu a:nth-child(1)").addClass("active")
        })
    </script>
</head>
<body>
    <main>
        <h1>학사관리 대시보드 (School management dashboard)</h1>
        <div class="content_area">
            <div class="department_info">
                <h2><i class="fas fa-school"></i>학과 정보</h2>
                <p>총 등록 학과 : <span> ${cnt.department[0]}</span></p>
                <p>운영 중 학과 : <span> ${cnt.department[1]}</span></p>
                <p>폐지 예정 : <span>${cnt.department[2]}</span></p>
                <p><i class="far fa-clock"></i> 업데이트 : <span>2021-12-09 12:00:00</span></p>
            </div>
            <div class="teacher_info">
                <h2><i class="fas fa-user-tie"></i>교직원 정보</h2>
                <p><span>총 등록 교직원</span>${cnt.teacher[0]}</p>
                <p><span>재직 중 교직원</span>${cnt.teacher[1]}</p>
                <p><span>휴직 중 교직원</span>${cnt.teacher[2]}</p>
                <p><i class="far fa-clock"></i> 업데이트 : <span>2021-12-09 12:00:00</span></p>
            </div>
            <div class="student_info">
                <h2><i class="fas fa-user-alt"></i>학생 정보</h2>
                <p><span>총 등록 학생</span>${cnt.student[0]}</p>
                <p><span>재학 중 학생</span>${cnt.student[1]}</p>
                <p><span>휴학 중 학생</span>${cnt.student[2]}</p>
                <p><span>자퇴/퇴학 예정 학생</span>${cnt.student[3]}</p>
                <p><i class="far fa-clock"></i> 업데이트 : <span>2021-12-09 12:00:00</span></p>
            </div>
            <div class="subject_info">
                <h2><i class="fas fa-chalkboard-teacher"></i>강의 정보</h2>
                <p><span>총 등록 강의</span>${cnt.subject[0]}</p>
                <p><span>개강</span>${cnt.subject[1]}</p>
                <p><span>폐강</span>${cnt.subject[2]}</p>
                <p><span>종강</span>${cnt.subject[3]}</p>
                <p><i class="far fa-clock"></i> 업데이트 : <span>2021-12-09</span></p>
            </div>
        </div>
    </main>
</body>
</html>