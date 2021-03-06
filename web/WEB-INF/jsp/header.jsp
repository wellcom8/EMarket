<%--
  Created by IntelliJ IDEA.
  User: Do0
  Date: 2021-04-13
  Time: 오후 2:35
--%>
<%@ page pageEncoding="UTF-8"%>

<div class="container-fluid bg-light border-bottom sticky-top">
    <header class="container d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4">
        <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
            Brand
        </a>

        <div class="col-12 col-md-6 mb-2 justify-content-center mb-md-0">
            <div class="input-group">
                <input type="text" class="form-control rounded-3" placeholder="상품명 입력" aria-label="검색 내용" aria-describedby="search-button">
                <button class="btn btn-outline-secondary" type="button" id="search-button">검색</button>
            </div>
        </div>

        <div class="col-md-3 text-end">
            <button type="button" class="btn btn-outline-primary me-2" id="login_btn">Login</button>
            <button type="button" class="btn btn-primary" id="reg_btn">Sign-up</button>
        </div>

        <%@ include file="/WEB-INF/include/include-body.jspf" %>
        <script src="<c:url value='/js/header.js'/>" charset="UTF-8"></script>

    </header>
</div>