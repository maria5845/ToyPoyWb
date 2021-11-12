<%--
  Created by IntelliJ IDEA.
  User: blueh
  Date: 2021-11-12
  Time: 오후 3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--<%@include file="/inc/front_common.jsp"%>--%>
<!DOCTYPE html>
<html lang="ko">
<head>

    <%--<%@include file="/inc/front_meta.jsp" %>--%>
    <sec:csrfMetaTags/>


    <!-- ================== CSS STYLE ================== -->
    <!--<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.png"/>-->
    <link href="<%=request.getContextPath()%>/dist/css/app.min.css" rel="stylesheet"/>
    <!-- kendo -->
    <link href="<%=request.getContextPath()%>/plugins/kendoui/style/kendo.common.min.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/plugins/kendoui/style/kendo.bootstrap-v4.min.css" rel="stylesheet"/>
    <script src="<%=request.getContextPath()%>/assets/plugins/ax5ui/ax5core.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugins/ax5ui/ax5modal.js"></script>
    <link href="<%=request.getContextPath()%>/assets/plugins/ax5ui/ax5modal.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/dist/css/custom.css" rel="stylesheet"/><!-- 항상 CSS 최하단-->
    <script src="<%=request.getContextPath()%>/dist/js/toypoy.js"></script>
    <!-- ================ /.CSS STYLE ================== -->
    <!-- kendo -->
    <script src="<%=request.getContextPath()%>/plugins/kendoui/js/jquery.min.js"></script>
    <!-- ================== 필수 JS ===================== -->
    <script src="<%=request.getContextPath()%>/js/app.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/theme/default.js"></script>
    <!-- ================ /.필수 JS ===================== -->
    <script src="<%=request.getContextPath()%>/plugins/kendoui/js/kendo.all.min.js"></script>



</head>
<style>
    /*
      ul {
          padding: 16px 0;
      }
      ul li {
          display: inline-block;
          margin: 0 5px;
          font-size: 14px;
          letter-spacing: -.5px;
      }

      ul li.tag-item {
          padding: 4px 8px;
          background-color: #777;
          color: #000;
      }
      */

    .tag-item:hover {
        background-color: #262626;
        color: #fff;
    }

    .del-btn {
        font-size: 12px;
        font-weight: bold;
        cursor: pointer;
        margin-left: 8px;
    }

    .container-fluid {
        padding-left: 0px;
        padding-right: 0px;
    }

    .pick {
        padding: 5px;
        border-radius: 5px;
        background-color: #F1F1F3;
        margin-bottom: 0px !important;
    }
</style>
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
        <%--<%@include file="/inc/front_header.jsp" %>--%>
    </div>
    <!-- end #header -->

    <!-- begin #sidebar -->
    <div id="sidebar" class="sidebar">
        <%--<%@include file="/inc/front_sidebar.jsp" %>--%>
    </div>
    <div class="sidebar-bg"></div>
    <!-- end #sidebar -->

    <!-- begin #content -->
    <div id="content" class="content">
        <!-- begin page-header -->
        <c:choose>
            <c:when test="${empty brand_id}">
                <h1 class="page-header">브랜드 등록</h1>
            </c:when>
            <c:otherwise>
                <h1 class="page-header">브랜드 수정</h1>
            </c:otherwise>
        </c:choose>
        <!-- end page-header -->
        <!-- 리스트 테이블 -->
        <div class="panel panel-inverse">
            <div class="panel-body">
                <div class="info-text" style="float: left; color: red;">* 표시는 필수입력 항목입니다.</div>
                <form id="brandForm" action="" method="post" data-parsley-validate="true" enctype="multipart/form-data">
                    <input type="hidden" id="_csrf" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="hidden" id="brand_id" name="brand_id" value="">
                    <div class="table">
                        <table class="tbl_ver">
                            <colgroup>
                                <col width="130">
                                <col>
                                <col width="135">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th><span style="color: red;">*</span>제목명</th>
                                <td>
                                    <input type="text" id="title" name="title" class="form-control form-control-sm" placeholder="제목명" data-parsley-required="true" value=""/>
                                </td>
                                <th><span style="color: red;">*</span> 분류</th>
                                <td>
                                    <select id="cate_id" name="cate_id">
                                        <c:forEach items="${cateList}" var="item">
                                            <option value="${item.cate_id}">${item.cate_name}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th><span style="color: red;">*</span>아티스트 연결</th>
                                <td>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <button class="btn btn-default" type="button" id="artistModal" style="display:inline-block; padding:6px;">아티스트 선택
                                                </button>
                                            </div>
                                            <div class="col-md-10 selectArtist-container">

                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <th style="background-color:white;"></th>
                                <td></td>
                            </tr>
                            <tr>
                                <th><span style="color: red;">*</span> 브랜드명</th>
                                <td colspan="3">
                                    <input type="text" id="brand_name" name="brand_name"  class="form-control form-control-sm" placeholder="브랜드명" data-parsley-required="true" value=""/>
                                </td>
                            </tr>
                            <tr>
                                <th>요약설명</th>
                                <td colspan="3">
                                    <input type="text" id="summary" name="summary" class="form-control form-control-sm" placeholder="요약설명" data-parsley-required="true" value=""/>
                                </td>
                            </tr>
                            <tr>
                                <th>브랜드 상세설명</th>
                                <td colspan="3"><textarea class="form-control form-control-sm" id="detail" name="detail" rows="10"></textarea></td>
                            </tr>
                            <tr>
                                <th><span style="color: red;">*</span>썸네일 이미지</th>
                                <td>
                                    <input type="text" id="thumbnail_filename" class="form-control form-control-sm required-data" style="display:inline-block; width:50%;" disabled placeholder="권장 크기 : 375 X 230">
                                    <!-- 이미지 파일만 선택가능하도록 제한 -->
                                    <input type="file" accept="image/*" name="thumbnail_file" id="thumbnail_file" style="display:none;">
                                    <label class="btn btn-sm btn-primary" for="thumbnail_file" style="margin:-4.5px 0px 0px -1px">파일 선택</label>
                                </td>
                                <th><span style="color: red;">*</span>상단 이미지</th>
                                <td>
                                    <input type="text" id="top_filename"
                                           class="form-control form-control-sm required-data"
                                           style="display:inline-block; width:50%;" disabled
                                           placeholder="권장 크기 : 1200 X 610">
                                    <!-- 이미지 파일만 선택가능하도록 제한 -->
                                    <input type="file" accept="image/*" name="top_file" id="top_file"
                                           style="display:none;">
                                    <label class="btn btn-sm btn-primary" for="top_file"
                                           style="margin:-4.5px 0px 0px -1px">파일 선택</label>
                                </td>
                            </tr>
                            <tr>
                                <th><span style="color: red;">*</span>상세 이미지</th>
                                <td>
                                    <input type="text" id="detail_filename"
                                           class="form-control form-control-sm required-data"
                                           style="display:inline-block; width:50%;" disabled>
                                    <!-- 이미지 파일만 선택가능하도록 제한 -->
                                    <input type="file" accept="image/*" name="detail_file" id="detail_file"
                                           style="display:none;">
                                    <label class="btn btn-sm btn-primary" for="detail_file"
                                           style="margin:-4.5px 0px 0px -1px">파일 선택</label>
                                </td>
                                <th><span style="color: red;">*</span>모바일 상세 이미지</th>
                                <td>
                                    <input type="text" id="mobile_filename"
                                           class="form-control form-control-sm required-data"
                                           style="display:inline-block; width:50%;" disabled>
                                    <!-- 이미지 파일만 선택가능하도록 제한 -->
                                    <input type="file" accept="image/*" name="mobile_file" id="mobile_file"
                                           style="display:none;">
                                    <label class="btn btn-sm btn-primary" for="mobile_file"
                                           style="margin:-4.5px 0px 0px -1px">파일 선택</label>
                                </td>
                            </tr>
                            <tr>
                                <th><span style="color: red;">*</span> 동영상</th>
                                <td colspan="3">
                                    <input type="text" id="video_url" name="video_url"
                                           class="form-control form-control-sm" placeholder="비메오 링크"/>
                                </td>
                            </tr>
                            <tr>
                                <th>진열 상태</th>
                                <td colspan="3">
                                    <div class="radio radio-css radio-inline">
                                        <input class="form-check-input" type="radio" name="disp_yn" id="display_y"
                                               value="Y" checked/>
                                        <label class="form-check-label" for="display_y">진열</label>
                                    </div>
                                    <div class="radio radio-css radio-inline">
                                        <input class="form-check-input" type="radio" name="disp_yn" id="display_n"
                                               value="N"/>
                                        <label class="form-check-label" for="display_n">미진열</label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>핸디온 노출 설정</th>
                                <td>
                                    <label style="display:inline; margin-right:25px;">
                                        <input type="checkbox" id="is_notable" name="is_notable" value="Y"
                                               style="vertical-align:text-top">
                                        &nbsp;&nbsp; 주목할만한 브랜드
                                    </label>
                                    <label style="display:inline; margin-right:25px;">
                                        <input type="checkbox" id="is_fun" name="is_fun" value="Y"
                                               style="vertical-align:text-top">
                                        &nbsp;&nbsp; Fun한 브랜드
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <th><span style="color: red;">*</span> 검색어 설정</th>
                                <td colspan="3">
                                    <input type="text" id="tag" name="title" class="form-control form-control-sm"
                                           placeholder="태그를 입력하면 자동으로 #이 생성됩니다. " data-parsley-required="true"
                                           value=""/>
                                    <input type="hidden" id="rdTag" name="tag" class="form-control form-control-sm"
                                           data-parsley-required="true" value=""/>
                                    <ul id="tag-list">
                                    </ul>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="btn-area">
                    <c:choose>
                        <c:when test="${empty brand_id}">
                            <button type="button" id="btnSave" class="btn btn-sm bg-theme">
                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i> 등록
                            </button>
                        </c:when>
                        <c:otherwise>
                            <button type="button" id="btnSave" class="btn btn-sm bg-theme">
                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정
                            </button>
                        </c:otherwise>
                    </c:choose>
                    <button type="button" class="btn btn-sm bg-theme"
                            onclick="location.href='<%=request.getContextPath()%>/brand/brandList.do'">
                        <i class="fa fa-list" aria-hidden="true"></i> 목록
                    </button>
                    <c:if test="${!empty brand_id}">
                        <button type="button" class="btn btn-sm btn-danger" id="btnDel"><i class="fa fa-trash-o"
                                                                                           aria-hidden="true"></i> 삭제
                        </button>
                    </c:if>
                </div>
            </div>
        </div>
        <!-- end panel -->
    </div>
    <!-- end #content -->
    <!-- begin #footer -->
    <div id="footer" class="footer">
      <%--  <%@include file="/inc/front_footer.jsp" %> --%>
    </div>
    <!-- end #footer -->
    <!-- begin scroll to top btn -->
    <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
       data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
    <!-- end scroll to top btn -->
</div>
<!-- end page container -->

<div id="dialog"></div>
<div id="window"></div>

<script type="text/javascript">
    var brand_id = '${brand_id}';
    var tag = [];
    var counter = 0;
    var artistDropDownList;
    var artistModal;


    //자식창에서 받아오는 콜백
    var artistModalCallBack = function (selectArtist) {
        $('.artist-item').remove();
        $('.selectArtist-container').append(selectArtist);
        $('.selectArtist').text("삭제");
        artistModalClose();
    };

    //아티스트 삭제버튼을 클릭 시

    function artistModalClose() {
        artistModal.close();
    }

    function addTag(value) {
        tag[counter] = value;
        counter++;
    }

    $(document).ready(function () {
        getBrand();
        pickModal();

        $(document).on('click', '.selectArtist', function () {
            $(this).closest('.artist-item').remove();
        });

        $('#thumbnail_file').on('change', function () {
            if (window.FileReader) {
                var filename = $(this)[0].files[0].name;
            } else {
                var filename = $(this).val().split('/').pop().split('\\').pop();
            }

            $('#thumbnail_filename').val(filename);
        });
        $('#top_file').on('change', function () {
            if (window.FileReader) {
                var filename = $(this)[0].files[0].name;
            } else {
                var filename = $(this).val().split('/').pop().split('\\').pop();
            }

            $('#top_filename').val(filename);
        });
        $('#detail_file').on('change', function () {
            if (window.FileReader) {
                var filename = $(this)[0].files[0].name;
            } else {
                var filename = $(this).val().split('/').pop().split('\\').pop();
            }

            $('#detail_filename').val(filename);
        });
        $('#mobile_file').on('change', function () {
            if (window.FileReader) {
                var filename = $(this)[0].files[0].name;
            } else {
                var filename = $(this).val().split('/').pop().split('\\').pop();
            }

            $('#mobile_filename').val(filename);
        });

        function marginTag() {
            return Object.values(tag).filter(function (word) {
                return word !== "";
            });
        }

        $("#tag").on("keypress", function (e) {
            var self = $(this);
            if (e.key === "Enter" || e.keyCode == 32) {
                var tagValue = "#" + self.val();
                if (tagValue !== "#") {
                    var result = Object.values(tag).filter(function (word) {
                        return word === tagValue;
                    })
                    if (result.length == 0) {
                        $("#tag-list").append("<li class='tag-item btn bg-theme'>" + tagValue + "<span class='del-btn' idx='" + counter + "'> x </span></li>");
                        addTag(tagValue);
                        console.log(tag);
                        self.val("");
                    } else {
                        alert("태그값이 중복됩니다.");
                    }
                }
                e.preventDefault();
            }
        });

        $(document).on("click", ".del-btn", function (e) {
            var index = $(this).attr("idx");
            tag[index] = "";
            $(this).parent().remove();
        });
    });


    function getBrand() {
        $('#brandForm')[0].reset();
        var params = {
            url: '<%=request.getContextPath()%>/brand/getBrand.do',
            data: {
                'brand_id': brand_id
            },
            callback: function (data) {
                if (data.brand != null) {
                    console.log(data.brand);
                    var brand = data.brand;
                    var search_word = brand.search_word;
                    $('#brand_id').val(brand.brand_id);
                    $('#title').val(brand.title);
                    $('#brand_name').val(brand.brand_name);
                    $('#summary').val(brand.summary);
                    $('#detail').val(brand.detail);
                    $('#thumbnail_filename').val(brand.thumbnail_file);
                    $('#top_filename').val(brand.top_file);
                    $('#detail_filename').val(brand.detail_file);
                    $('#mobile_filename').val(brand.mobile_file);
                    $('#video_url').val(brand.video_url);
                    $('#cate_id').val(brand.cate_id).prop("selectd", true);
                    $('#artist_id').val(brand.artist_id);

                    if (search_word != ' ') {
                        var array = search_word.split(",");

                        $.each(array, function (index, item) {
                            if (item != '') {
                                $("#tag-list").append("<li class='tag-item btn bg-theme'>" + item + "<span class='del-btn' idx='" + index + "'> x </span></li>");
                                addTag(item);
                            }
                        });
                    }

                    if (brand.is_notable == "Y") {
                        $("input:checkbox[id='is_notable']").prop("checked", true);
                    }

                    if (brand.is_fun == "Y") {
                        $("input:checkbox[id='is_fun']").prop("checked", true);
                    }

                    if (brand.artist_id != "" && brand.artist_id != undefined) {
                        var html = '<div class="row pick artist-item mb-2">';
                        html += '<div class="col-3">';
                        html += '<img style="height:50px; width:50px;" src="<%=request.getContextPath()%>/files/artist/' + brand.artist_file_name + '.' + brand.artist_file_type + '"></div>';
                        html += '<div class="col-3 d-flex justify-content-center align-items-center">' + brand.artist_kname + '</div>';
                        html += '<div class="col-4 d-flex justify-content-center align-items-center">' + brand.artist_ename + '</div>';
                        html += '<div class="col-2 d-flex justify-content-center align-items-center">';
                        html += '<button type="button" class="btn btn-sm bg-theme selectArtist">삭제</button></div>';
                        html += '<input type="hidden" name="artist_id" value="' + brand.artist_id + '"></div>';

                        $('.selectArtist-container').append(html);
                    }
                }
            }
        }
        ajaxCall(params);
    }


    $('#btnSave').on('click', function () {
        if ($('#title').val() == '') {
            myAlert("브랜드 등록", "제목을 입력해주세요.");
            return;
        }
        if ($('#brand_name').val() == '') {
            myAlert("브랜드 등록", "브랜드명을 입력해주세요.");
            return;
        }
        var formData = new FormData($('#brandForm')[0]);
        // 공백 제거
        tag = tag.filter(function (item) {
            return item !== null && item !== undefined && item !== '';
        });
        var join_arr = tag.join(',');
        formData.append("search_word", join_arr);

        var params = {
            url: '<%=request.getContextPath()%>/brand/saveBrand.do',
            data: formData,
            callback: function (data) {
                if (data.success) {
                    myAlert("브랜드 등록", "브랜드가 등록되었습니다.", function () {
                        location.href = '<%=request.getContextPath()%>/brand/brandList.do';
                    })
                } else {
                    myAlert("브랜드 등록", "작업 중 오류가 발생되었습니다. <br> 잠시 후 다시 시도해 주세요.");
                }
            }
        }
        ajaxCallFile(params);
    })

    $('#btnDel').on('click', function () {
        myConfirm("브랜드 삭제", "해당 브랜드를 삭제하시겠습니까?").then(function () {
            var params = {
                url: '<%=request.getContextPath()%>/brand/deleteBrand.do',
                data: {
                    'brand_id': $('#brand_id').val()
                },
                callback: function (data) {
                    if (data.success) {
                        myAlert("브랜드 삭제", "브랜드가 삭제되었습니다.", function () {
                            location.href = '<%=request.getContextPath()%>/brand/brandList.do';
                        });
                    } else {
                        myAlert("브랜드 삭제", "작업 중 오류가 발생되었습니다. <br> 잠시 후 다시 시도해 주세요.");
                    }
                }
            }
            ajaxCall(params);
        }, function () {

        });
    });

    function pickModal() {
        artistModal = new ax5.ui.modal({
            theme: "danger",
            header: {
                title: '아티스트 선택',
                btns: {
                    close: {
                        label: '<i class="fa fa-times-circle" aria-hidden="true"></i>', onClick: function () {
                            artistModal.close();
                        }
                    }
                }
            }
        });

        $('#artistModal').click(function () {
            artistModal.open({
                width: 600,
                height: 500,
                iframe: {
                    method: "get",
                    url: "<%=request.getContextPath()%>/artist/getArtistPickList.do",
                    param: "callBack=artistModalCallBack"
                }
            }, function () {

            });
        });
    }

    // Kendo alert 생성 함수
    function myAlert(title, content, action) {
        $('<div></div>').kendoAlert({
            title: title,
            content: content,
            animation: {
                open: {
                    effects: "fade:in"
                },
                close: {
                    effects: "fade:out"
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
            title: title,
            content: content,
            animation: {
                open: {
                    effects: "fade:in"
                },
                close: {
                    effects: "fade:out"
                }
            },
            messages: {
                okText: "삭제",
                cancel: "취소"
            }
        }).data('kendoConfirm').open().result;
    }


</script>
</body>
</html>
