<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style><%@include file="/resources/css/adminMenu.css"%></style>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: left;
        }
    </style>
    <title>제품 관리 페이지</title>
</head>
<body>
<jsp:include page="../adminMenu.jsp" flush="false" />
<div class="main">
    <h1>제품 관리 페이지</h1>
    <div class="main">
        <table>
            <tr>
                <td colspan="16">[총 ${productCount}개]</td>
            </tr>
            <tr>
                <td colspan="16">
                    <select id="productNumber" name="productNumber">
                        <option value="selectedProduct">선택한 제품의</option>
                        <option value="allProduct">검색 결과 전체 제품의</option>
                    </select>
                    <select id="changeContent" name="changeContent">
                        <option value="GLV">글러브</option>
                        <option value="PRO">보호장비</option>
                        <option value="OGL">장갑</option>
                        <option value="ACC">액세서리</option>
                        <option value="BAT">배트</option>
                        <option value="APP">의류</option>
                        <option value="BAL">야구공</option>
                        <option value="SHO">야구화</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>선택</th>
                <th class="pd_id">제품ID</th>
                <th class="pd_name">제품명</th>
                <th class="mdl_name">모델명</th>
                <th class="pd_type_cd">제품유형</th>
                <th class="pd_type_det_cd">제품상세유형</th>
                <th class="brd_cd">브랜드</th>
                <th class="mn_img_fn">대표 사진 파일명</th>
                <th class="det_img_fn">상세 사진 파일명</th>
                <th class="sls_strt_dt">판매시작일시</th>
                <th class="pd_chr_cd">제품 특성</th>
                <th class="age_grp_cd">사용 연령대</th>
                <th class="qlt_cd">제품품질</th>
                <th class="pd_is_show">제품노출여부</th>
                <th class="hit_cnt">조회수</th>
                <th class="frst_reg_dt">제품 최초 등록일</th>
            </tr>
            <c:forEach var="productDto" items="${productList}">
                <tr>
                    <td><input type="checkbox" name="selectedProduct"></td>
                    <td class="pd_id">${productDto.pd_id}</td>
                    <td class="pd_name">${productDto.pd_name}</td>
                    <td class="mdl_name">${productDto.mdl_name}</td>
                    <td class="pd_type_cd">${productDto.pd_type_cd}</td>
                    <td class="pd_type_det_cd">${productDto.pd_type_det_cd}</td>
                    <td class="brd_cd">${productDto.brd_cd}</td>
                    <th class="mn_img_fn">${productDto.mn_img_fn}</th>
                    <th class="det_img_fn">${productDto.det_img_fn}</th>
                    <th class="sls_strt_dt">${productDto.sls_strt_dt}</th>
                    <th class="pd_chr_cd">${productDto.pd_chr_cd}</th>
                    <th class="age_grp_cd">${productDto.age_grp_cd}</th>
                    <th class="qlt_cd">${productDto.qlt_cd}</th>
                    <th class="pd_is_show">${productDto.pd_is_show}</th>
                    <th class="hit_cnt">${productDto.hit_cnt}</th>
                    <th class="frst_reg_dt">${productDto.frst_reg_dt}</th>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>