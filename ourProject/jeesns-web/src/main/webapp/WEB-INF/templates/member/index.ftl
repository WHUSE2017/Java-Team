<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心 - ${SITE_NAME} - Powered By JEESNS</title>
    <meta name="keywords" content="${SITE_KEYS}"/>
    <meta name="description" content="${SITE_DESCRIPTION}"/>
    <meta name="author" content="JEESNS"/>
    <link href="${basePath}/res/common/css/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/res/common/css/font-awesome.min.css" rel="stylesheet">
    <link href="${basePath}/res/common/css/jeesns.css" rel="stylesheet">
    <link href="${basePath}/res/common/css/jeesns-skin.css" rel="stylesheet">
    <link href="${basePath}/res/plugins/emoji/css/emoji.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${basePath}/res/common/js/html5shiv.min.js"></script>
    <script src="${basePath}/res/common/js/respond.min.js"></script>
    <![endif]-->
    <script src="${basePath}/res/common/js/jquery-2.1.1.min.js"></script>
    <script src="${basePath}/res/common/js/bootstrap.min.js"></script>
    <script src="${basePath}/res/plugins/layer/layer.js"></script>
    <script src="${basePath}/res/common/js/jquery.form.js"></script>
    <script src="${basePath}/res/common/js/jeesns.js"></script>
    <script src="${basePath}/res/modules/weibo.js"></script>
    <script src="${basePath}/res/plugins/emoji/js/underscore-min.js"></script>
    <script src="${basePath}/res/plugins/emoji/js/editor.js"></script>
    <script src="${basePath}/res/plugins/emoji/js/emojis.js"></script>
    <script src="${basePath}/res/common/js/extendPagination.js"></script>
</head>

<body class="gray-bg">
<#include "/member/common/header.ftl"/>
<div class="wrapper wrapper-content">
    <div class="member-banner" style="background-image: url(${basePath}/res/common/images/member_banner.png);">
        <div class="attempts"></div>
        <div class="container">
            <div class="container content">
                <div class="left">
                    <div class="avatar">
                        <img src="${basePath}${loginUser.avatar}" class="img-circle" width="80px" height="80px"/>
                    </div>
                    <div class="info">
                        <div class="name">
                        ${loginUser.name}
                        <#if loginUser.sex=='女'>
                            <span class="sex"><i class="fa fa-venus"></i></span>
                        <#elseif loginUser.sex=='男'>
                            <span class="sex"><i class="fa fa-mars"></i></span>
                        <#else>
                            <span class="sex"><i class="fa fa-intersex"></i></span>
                        </#if>
                        </div>
                        <p>${loginUser.website}</p>
                        <p>${loginUser.introduce}</p>
                        <p class="operator">
                            <a class="btn btn-info btn-outline member-follows" href="${basePath}/member/editInfo">
                                <i class="fa fa-edit"></i> 编辑个人资料
                            </a>
                        </p>
                    </div>
                </div>
                <div class="right">
                    <div class="follows">
                        <span>关注</span>
                        <a href="${basePath}/u/${loginUser.id}/home/follows">${loginUser.follows}</a>
                    </div>
                    <div class="fans">
                        <span>学生</span>
                        <a href="${basePath}/u/${loginUser.id}/home/fans">${loginUser.fans}</a>
                    </div>

           
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="ibox">
                <div class="ibox-content float-left">
                    <div class="col-sm-2">
                        <div class="float-e-margins">
                            <div class="feed-activity-list">
                                
                               
                                  <#if loginUser?? && loginUser.isAdmin &gt; 0>
                                <a href="${basePath}/group/apply">
                                    <div class="feed-element">
                                        <div class="media-body">
                                            开设课程
                                        </div>
                                    </div>
                                </a>
                                 <#else>
                                 <a href="${basePath}/group/${loginUser.id}">
                                    <div class="feed-element">
                                        <div class="media-body">
                                           选课
                                        </div>
                                    </div>
                                </a> 
                                    </#if>
                                <#--<a href="${basePath}/u/${loginUser.id}/home/follows">-->
                                    <#--<div class="feed-element">-->
                                        <#--<div class="media-body">-->
                                            <#--关注-->
                                        <#--</div>-->
                                    <#--</div>-->
                                <#--</a>-->
                                <a href="${basePath}/u/${loginUser.id}/home/groupTopic">
                                    <div class="feed-element">
                                        <div class="media-body">
                                            群帖
                                        </div>
                                    </div>
                                </a>

                            <#if loginUser?? && loginUser.isAdmin &gt; 0>
                                <a href="${basePath}/u/${loginUser.id}/home/group">
                                    <div class="feed-element">
                                        <div class="media-body">
                                            我的群组
                                        </div>
                                    </div>
                                </a>
                            <#else>
                                <a href="${basePath}/u/${loginUser.id}/home/group">
                                    <div class="feed-element">
                                        <div class="media-body">
                                            我的课表
                                        </div>
                                    </div>
                                </a>
                            </#if>
                               <a href="${basePath}/group/findperson">
                                    <div class="feed-element">
                                        <div class="media-body">
                                            找人
                                        </div>
                                    </div>
                                </a>
               
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                
                            </div>
                            <div>
                                <div class="feed-activity-list">

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<#include "/member/common/footer.ftl"/>
<script type="text/javascript">
    $(function () {
        $(".pagination").jeesns_page("jeesnsPageForm");
    });
</script>
</body>
</html>