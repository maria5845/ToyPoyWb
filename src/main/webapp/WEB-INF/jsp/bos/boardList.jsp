<%--
  Created by IntelliJ IDEA.
  User: blueh
  Date: 2021-11-12
  Time: 오후 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--<%@include file="/inc/front_common.jsp"%>--%>

<!DOCTYPE html>
<html lang="ko">
<head>

    <%-- <%@include file="/inc/front_meta.jsp"%>--%>
    <title>HandyOn</title>

    <!-- ================== CSS STYLE ================== -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/images/favicon.png"/>
    <!-- kendo -->
    <link href="<%=request.getContextPath()%>/plugins/kendoui/style/kendo.common.min.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/plugins/kendoui/style/kendo.bootstrap-v4.min.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/plugins/kendoui/style/kendo.default.mobile.min.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/dist/css/custom.css" rel="stylesheet"/><!-- 항상 CSS 최하단-->
    <script src="<%=request.getContextPath()%>/dist/js/toypoy.js"></script>
    <!-- ================ /.CSS STYLE ================== -->

    <!-- kendo -->
    <script src="<%=request.getContextPath()%>/plugins/kendoui/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/kendoui/js/jszip.min.js"></script>
    <script src="<%=request.getContextPath()%>/plugins/kendoui/js/kendo.all.min.js"></script>

    <!-- ================== 필수 JS ===================== -->
    <script src="<%=request.getContextPath()%>/js/app.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/theme/default.js"></script>


    <style type="text/css">
        .k-grid .k-grid-search {
            margin-left: auto;
            margin-right: 0;
        }

        tr:hover {
            cursor: pointer;
        }

        #categoryList .k-sprite {
            background-image: url("https://demos.telerik.com/kendo-ui/content/web/treeview/coloricons-sprite.png");
        }

        .k-treeview .k-top,
        .k-treeview .k-mid,
        .k-treeview .k-bot {
            background-image: url('https://d35islomi5rx1v.cloudfront.net/mvc/2012.2.607/Default/treeview-nodes.png');
            background-repeat: no-repeat;
            margin-left: -16px;
            padding-left: 16px;
        }

        .k-treeview .k-item {
            background-image: url('https://d35islomi5rx1v.cloudfront.net/mvc/2012.2.607/Default/treeview-line.png');
        }

        .k-treeview .k-last {
            background-image: none;
        }


        .k-treeview .k-top {
            background-position: -91px 0;
        }

        .k-treeview .k-bot {
            background-position: -69px -21px;
        }

        .k-treeview .k-mid {
            background-position: -47px -43px;
        }

        .k-treeview .k-last .k-top {
            background-position: -25px -63px;
        }

        .k-treeview .k-group .k-last .k-bot {
            background-position: -69px -22px;
        }

        .k-treeview .k-item {
            background-repeat: no-repeat;
        }

        .k-treeview .k-first {
            background-repeat: no-repeat;
            background-position: 0 16px;
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
       <%-- <%@include file="/inc/front_header.jsp" %> --%>
    </div>
    <!-- end #header -->

    <!-- begin #sidebar -->
    <div id="sidebar" class="sidebar">
        <%-- <%@include file="/inc/front_sidebar.jsp" %> --%>
      </div>
      <div class="sidebar-bg"></div>
      <!-- end #sidebar -->

      <!-- begin #content -->
      <div id="content" class="content">
          <!-- begin page-header -->
          <h1 class="page-header">아티스트 조회</h1>
          <!-- end page-header -->

          <div class="panel panel-inverse" data-sortable-id="tree-view-1">
              <!--                 <div class="panel-heading"> -->
              <!--                     <h4 class="panel-title"></h4> -->
              <!--                     <button class="btn btn-default btn-sm btn-danger" type="button" id="btnDel"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</button> -->
              <!--                 </div> -->
              <div class="panel-body" id="splitter" style="border:1px solid #ccc; min-height: calc(100vh - 190px);">
                  <div id="categoryList"></div>
                  <div id="artistList"></div>
              </div>
          </div>
      </div>

      <form method="post" action="artistForm.do" id="artistForm">
          <input type="hidden" id="_csrf" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <input type="hidden" id="artist_id" name="artist_id" value="">
      </form>

  </div>
  <!-- end #content -->


  <!-- begin #footer -->
  <div id="footer" class="footer">
     <%-- <%@include file="/inc/front_footer.jsp" %> --%>
</div>
<!-- end #footer -->

<!-- begin scroll to top btn -->
<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
   data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
<!-- end scroll to top btn -->
<!-- end page container -->

<div id="dialog"></div>

<script type="text/javascript">

    var artistIds = [];
    var text = '';
    var cate_id;

    $(document).ready(function () {

        getArtistList();
        getCategoryList();

        $('#splitter').kendoSplitter({
            panes: [{collapsible: true, size: '20%'}, {}]
        });

        $("#artistList tbody").on("click", "td:not(:first-child)", function (e) {
            var grid = $('#artistList').data('kendoGrid');
            var dataItem = grid.dataItem(this.closest('tr'));

            $('#artist_id').val(dataItem.artist_id);
            $('#artistForm').submit();
        });

        $('.k-grid-add').on('click', function () {
            location.href = '<%=request.getContextPath()%>/artist/artistForm.do';
        });

        $('.k-grid-delete').on('click', function () {

            if (artistIds == '') {
                myAlert("아티스트 삭제", "삭제할 항목을 선택해주세요.");
            } else {
                myConfirm("아티스트 삭제", "해당 아티스트를 삭제하시겠습니까?").then(function () {
                    var params = {
                        url: '<%=request.getContextPath()%>/artist/deleteArtist.do',
                        data: {
                            'artist_id': artistIds
                        },
                        callback: function (data) {
                            if (data.success) {
                                myAlert("아티스트 삭제", "아티스트가 삭제되었습니다.", function () {
                                    getArtistList();
                                });
                            } else {
                                myAlert("아티스트 삭제", "작업 중 오류가 발생되었습니다. <br> 잠시 후 다시 시도해 주세요.");
                            }
                        }
                    }
                    ajaxCall(params);
                }, function () {

                });
            }
        });

        $('#categoryList').on('click', '.k-in', function (e) {
            $(this).toggleClass('k-state-selected');
            $(this).toggleClass('k-state-focused');
            if ($(this).text() != text) {
                $(this).addClass('k-state-selected');
                $(this).addClass('k-state-focused');
                click = true;
            }
            text = $(this).text();
            if ($('.k-state-selected').length == 1) {
                cate_id = '';
            }

            getArtistList();

        });

    });

    function getArtistList() {

        var dataSource = new kendo.data.DataSource({
            transport: {
                read: {
                    url: '<%=request.getContextPath()%>/artist/getArtistList.do',
                    beforeSend: function (xhr) {
                        var token = $("meta[name='_csrf']").attr("content");
                        var header = $("meta[name='_csrf_header']").attr("content");
                        xhr.setRequestHeader(header, token);
                    },
                    type: 'POST',
                    data: {
                        'cate_id': cate_id
                    }
                }
            },
            schema: {
                data: function (res) {
                    return res.artistList;
                },
                total: function (res) {
                    return res.total;
                },
                model: {
                    id: 'artist_id'
                }
            },
            pageSize: 15,
            serverPaging: false,
            serverFiltering: false,
            serverSorting: false
        });

        var grid = $('#artistList').kendoGrid({
            dataSource: dataSource,
            sortable: {
                mode: "single",     // "single" : 단일정렬 , "multiple : 다중정렬"
                allowUnsort: true,  // true 설정하면 오름차순 -> 내림차순 -> 정렬안된 것 순으로 반복. false 설정하면 오름차순 -> 내림차순 반복
                showIndexes: false  // 다중정렬로 설정했을시, 정렬 모양 옆에 인덱스 표시 여부
            },
            pageable: {
                refresh: true,    // 우측 하단에 새로 고침 버튼 표시 여부
                pageSizes: ["all", 5, 10, 15],  // 좌측 하단에 페이지 크기를 선택할 수 있는 select 박스 표시 여부
                buttonCount: 5,   // 좌측 하단에 표시되는 페이지 버튼의 최대 수. 보다 많은 페이지가 있을 경우 줄임표(...) 표시
                messages: {   	  // 우측 하단에 표시되는 메시지 커스텀
                    display: "총 {2}개의 아티스트 중 {0} - {1}",
                    empty: "등록된 아티스트가 없습니다.",
                    itemsPerPage: "개씩 보기"
                }
            },
            scrollable: true,
            columnMenu: false,
            resizable: true,
            change: onChange,
            toolbar: [{name: 'create', text: '등록'}, {name: 'destroy', text: '삭제'}, {name: 'search', text: '검색'}],
            columns: [
                {
                    selectable: true,
                    width: 50,
                    headerAttributes: {"class": "table-header-cell", style: "text-align: center; font-size: 14px"},
                    attributes: {style: "text-align: center;"}
                },
                {
                    field: 'title',
                    title: '제목',
                    headerAttributes: {"class": "table-header-cell", style: "text-align: center; font-size: 14px"}
                },
                {
                    field: 'artist_kname',
                    title: '아티스트',
                    headerAttributes: {"class": "table-header-cell", style: "text-align: center; font-size: 14px"}
                },
                {
                    field: 'cate_name',
                    title: '분류',
                    headerAttributes: {"class": "table-header-cell", style: "text-align: center; font-size: 14px"}
                },
                {
                    field: 'disp_yn',
                    title: '상태',
                    headerAttributes: {"class": "table-header-cell", style: "text-align: center; font-size: 14px"}
                },
                {
                    field: 'reg_date',
                    title: '등록일',
                    headerAttributes: {"class": "table-header-cell", style: "text-align: center; font-size: 14px"}
                },
            ],
        })
    }

    function getCategoryList() {

        var dataSource = new kendo.data.HierarchicalDataSource({
            transport: {
                read: {
                    url: '<%=request.getContextPath()%>/category/getCategoryList.do',
                    beforeSend: function (xhr) {
                        var token = $("meta[name='_csrf']").attr("content");
                        var header = $("meta[name='_csrf_header']").attr("content");
                        xhr.setRequestHeader(header, token);
                    },
                    type: 'POST',
                }
            },
            schema: {
                data: function (res) {
                    return res.treeList;
                },
                model: {
                    id: "category_id",
                    children: "items"
                }
            }
        });

        $('#categoryList').kendoTreeView({
            dataSource: dataSource,
            dataSpriteCssClassField: "sprite",
            dataTextField: "cate_name",
            select: function (e) {
                var data = $("#categoryList").data('kendoTreeView').dataItem(e.node);
                cate_id = data.cate_id;
            }
        });

        $('#categoryList').data('kendoTreeView').expand('.k-item');

    }

    function onChange() {
        artistIds = this.selectedKeyNames().join(',');
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


