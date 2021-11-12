<%--
  Created by IntelliJ IDEA.
  User: blueh
  Date: 2021-11-12
  Time: 오후 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="/inc/front_common.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>

    <%@include file="/inc/front_meta.jsp"%>
    <sec:csrfMetaTags />


    <!-- ================== CSS STYLE ================== -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.png" />
    <link href="<%=request.getContextPath()%>/assets/css/default/app.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/plugins/kendoui/style/kendo.common.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/plugins/kendoui/style/kendo.bootstrap-v4.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/plugins/kendoui/style/kendo.default.mobile.min.css" rel="stylesheet" />
    <!-- bootstrap-datepicker -->
    <link href="<%=request.getContextPath()%>/assets/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/dist/css/custom.css" rel="stylesheet" /><!-- 항상 CSS 최하단-->
    <!-- ================ /.CSS STYLE ================== -->

    <!-- ================== 필수 JS ===================== -->
    <!-- kendo -->
    <script src="<%=request.getContextPath()%>/assets/plugins/kendoui/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/plugins/kendoui/js/jszip.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/app.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/theme/default.js"></script>
    <script src="<%=request.getContextPath()%>/dist/js/victor.js"></script>
    <!-- ================ /.필수 JS ===================== -->
    <script src="<%=request.getContextPath()%>/assets/plugins/kendoui/js/kendo.all.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/plugins/kendoui/js/kendo.culture.ko-KR.min.js"></script>

    <!-- ================== 페이지 추가 JS ================== -->
    <!-- ================ /.페이지 추가 JS =============== -->

    <style>
        .k-datetimepicker {
            width: 13.4em;
        }
    </style>
</head>
<body>
<!-- begin #page-loader -->
<div id="page-loader" class="fade show">
    <span class="spinner"></span>
</div>
<!-- end #page-loader -->

<!-- begin #page-container -->
<div id="page-container" class="page-container fade page-sidebar-fixed page-header-fixed">
    <!-- begin #header -->
    <div id="header" class="header navbar-default bg-theme">
        <%@include file="/inc/front_header.jsp"%>
    </div>
    <!-- end #header -->
    <!-- begin #sidebar -->
    <div id="sidebar" class="sidebar">
        <%@include file="/inc/front_sidebar.jsp"%>
    </div>
    <div class="sidebar-bg"></div>
    <!-- end #sidebar -->

    <!-- begin #content -->
    <div id="" class="content">
        <!-- begin page-header -->
        <h1 class="page-header">${board.board_name}</h1>
        <!-- ${board} <br> ${article} -->

        <!-- 리스트 테이블 -->
        <div class="panel panel-inverse">
            <div class="panel-body">
                <form id="articleForm" action="" method="post" data-parsley-validate="true" enctype="multipart/form-data" onsubmit="return false">
                    <input type="hidden" id="_csrf" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <input type ="hidden" id="article_id" name="article_id" value="${article.article_id}">
                    <input type ="hidden" id="board_id" name="board_id" value="${board.board_id}">

                    <c:if test="${board.comment_type ne 'Y'}">
                        <div class="btn-area">
                            <c:choose>
                                <c:when test="${empty article.article_id}">
                                    <button type="button" onclick="saveArticle('article');" class="btn btn-sm bg-theme">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i> 등록
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="button" onclick="saveArticle('article');" class="btn btn-sm bg-theme" style="${board.reply_yn eq 'Y' and board.board_type ne 3 ? "display:none" : ""}">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정
                                    </button>
                                </c:otherwise>
                            </c:choose>
                            <button type="button" class="btn btn-sm bg-theme" onclick="window.history.back();">
                                <i class="fa fa-list" aria-hidden="true"></i> 목록
                            </button>
                            <c:if test="${!empty article.article_id}">
                                <button type="button" class="btn btn-sm btn-danger" onclick="deleteArticle();"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</button>
                            </c:if>
                        </div>
                    </c:if>

                    <div class="table">
                        <table class="tbl_ver" cellspacing="0">
                            <colgroup>
                                <col width="10%">
                                <col width="40%">
                                <col width="10%">
                                <col width="40%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th>등록자</th>
                                <td>
                                    <span>${article.reg_name}</span>
                                </td>
                                <th>등록일시</th>
                                <td>
                                    <span>${article.reg_date}</span>
                                </td>
                            </tr>
                            <tr>
                                <th>제목</th>
                                <td colspan="3">
                                    <input type="text" id="title" name="title" class="form-control form-control-sm" placeholder="제목명" data-parsley-required="true"
                                    ${board.reply_yn eq 'Y' and board.board_type ne 3 ? "readonly" : ""} value ="${article.title}"/>
                                </td>
                            </tr>
                            <c:if test="${board.board_id eq 1026}">
                                <tr>
                                    <th>기간</th>
                                    <td >
                                        <input id ="begin_date"	value="${article.begin_date}"> <span style="color: black;">부터</span>
                                        <input id ="end_date" value="${article.end_date}"> <span style="color: black;">까지</span>
                                    </td>
                                </tr>
                            </c:if>
                            <tr>
                                <th>${board.board_type ne 3 ? "내용" : "답변"}</th>
                                <td colspan="3">
                                    	<textarea class="form-control form-control-sm" id="content" name="content" rows="15"
                                        ${board.reply_yn eq 'Y' and board.board_type ne 3 ? "readonly" : ""}>${board.board_type ne 3 ? article.content : article.reply}</textarea>
                                </td>
                            </tr>
                            <c:if test="${board.file_yn eq 'Y'}">
                                <tr>
                                    <th>첨부파일</th>
                                    <td colspan="3">
                                        <input type="text" id="filename" class="form-control form-control-sm" style="width:30%; display:inline-block;" value="${article.org_file_name}" readonly>
                                        <input type="file" name="file" id="file" style="display:none;">
                                        <label class="btn btn-sm btn-primary" for="file" style="margin:-4.5px 0px 0px -1px">파일 선택</label>
                                    </td>
                                </tr>
                            </c:if>
                            <c:if test="${board.reply_yn eq 'Y' and board.board_type ne 3}">
                                <tr>
                                    <th>답변</th>
                                    <td colspan="3">
                                        <textarea class="form-control form-control-sm" id="reply" name="reply" rows="10">${article.reply}</textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <th>답변자</th>
                                    <td>
                                        <span>${empty article.reply_name ? sessionScope.userInfo.name : article.reply_name}</span>
                                    </td>
                                    <th>답변일시</th>
                                    <td>
                                        <span>${article.reply_date}</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" >
                                        <c:if test="${empty article.reply}">
                                            <button type="button" onclick="saveArticle('reply');" class="btn btn-sm bg-theme">
                                                <i class="fa fa-pencil-square-o"></i> 답변등록
                                            </button>
                                        </c:if>
                                        <c:if test="${!empty article.reply}">
                                            <button type="button" onclick="saveArticle('reply');" class="btn btn-sm bg-theme">
                                                <i class="fa fa-pencil-square-o"></i> 답변수정
                                            </button>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
        <!-- end panel -->
    </div>
    <!-- end #content -->
    <!-- begin #footer -->
    <div id="footer" class="footer">
        <%@include file="/inc/front_footer.jsp"%>
    </div>
    <!-- end #footer -->

    <!-- begin scroll to top btn -->
    <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
       data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
    <!-- end scroll to top btn -->
</div>
<!-- end page container -->

<div id="dialog"></div>

<script type="text/javascript">
    var _board_type = '${board.board_type}';
    var _file_yn 	= '${board.file_yn}';
    var _reply 		= '${empty article.reply}';

    $(document).ready(function(){
        $('#file').on('change', function() {
            if (window.FileReader) {
                var filename = $(this)[0].files[0].name;
            } else {
                var filename = $(this).val().split('/').pop().split('\\').pop();
            }

            $('#filename').val(filename);
        });

        if (${board.board_id eq 1026}) {
            $("#begin_date").kendoDateTimePicker({
                culture:"ko-KR",
                format: "yyyy-MM-dd HH:mm:ss"
            });
            $("#end_date").kendoDateTimePicker({
                culture:"ko-KR",
                format: "yyyy-MM-dd HH:mm:ss"
            });
        }
    });

    function saveArticle(type){
        var param = {};
        var formData = new FormData();
        if (${board.board_id eq 1026}) {
            formData.append("begin_date", $('#begin_date').val());
            formData.append('end_date', $('#end_date').val());
        }
        formData.append("board_id" , $('#board_id').val());
        formData.append("article_id" , $('#article_id').val());
        param.board_id = $('#board_id').val();
        param.article_id = $('#article_id').val();
        if(type == "reply"){
            formData.append("reply" , $('#reply').val());
            param.reply = $('#reply').val();
        }else{
            formData.append("title" , $('#title').val());
            param.title = $('#title').val();
            if(_board_type == 3){
                formData.append("reply" , $('#content').val());
                param.reply = $('#content').val();
            }else{
                formData.append("content" , $('#content').val());
                param.content = $('#content').val();
            }
        }

        if(_file_yn == "Y"){
            formData.append("file" , document.getElementById('file').files[0]);
        }
        var params = {
            url : '<%=request.getContextPath()%>/board/saveArticle.do',
            data : formData,
            callback : function(data) {
                console.log(data);
                if(data.success) {
                    if(type == "reply" && _reply != ""){
                        window.history.back();
                        //location.href = '/board/articleList.do?board_id=' + ${board.board_id};
                    }else{
                        $(location).attr('href', '<%=request.getContextPath()%>/board/articleList.do?board_id=' + ${board.board_id});
                    }
                }else {
                    $('<div></div>').kendoAlert({
                        title : '게시물 저장',
                        content : '처리중 에러가 발생되었습니다. <br> 잠시 후 다시 시도해주세요.',
                    }).data('kendoAlert').open();
                }
            }
        }
        ajaxCallFile(params);
    }

    function deleteArticle(){
        myConfirm("게시물 삭제", "해당 게시물을 삭제하시겠습니까?").then(function() {
            var params = {
                url : '<%=request.getContextPath()%>/board/deleteArticle.do',
                data : {
                    'article_id' : $('#article_id').val()
                },
                callback : function(data) {
                    if(data.success) {
                        myAlert("게시물 삭제", "게시물이 삭제되었습니다.", function() {
                            window.history.back();
                        });
                    } else {
                        myAlert("게시물 삭제", "작업 중 오류가 발생되었습니다. <br> 잠시 후 다시 시도해 주세요.");
                    }
                }
            }
            ajaxCall(params);
        }, function() {

        });
    }

    // Kendo alert 생성 함수
    function myAlert(title, content, action) {
        $('<div></div>').kendoAlert({
            title : title,
            content : content,
            animation : {
                open : {
                    effects : "fade:in"
                },
                close : {
                    effects : "fade:out"
                }
            },
            actions: [{
                text: '확인',
                action: action
            }]
        }).data("kendoAlert").open();
    }

    // Kendo confirm 생성 함수
    function myConfirm(title, content) {
        return $('<div></div>').kendoConfirm({
            title : title,
            content : content,
            animation : {
                open : {
                    effects : "fade:in"
                },
                close : {
                    effects : "fade:out"
                }
            },
            messages : {
                okText : "삭제",
                cancel : "취소"
            }
        }).data('kendoConfirm').open().result;
    }

</script>
</body>
</html>
