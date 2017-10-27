<div id="wrapper">
    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation">
                <div class="container">
                    <div class="navbar-header jeesns-logo">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse"
                                class="navbar-toggle collapsed" type="button">
                            <i class="fa fa-reorder"></i>
                        </button>
                    <#--<a href="${basePath}/" class="navbar-brand"><img src="${basePath}${SITE_LOGO}" height="50px"/></a>-->
                        <a href="???" class="navbar-brand"><img src="${basePath}/res/common/images/headerlogo.png" height="50px"/></a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav">
\
                            <li>
                            <#if loginUser?? && loginUser.isAdmin &gt; 0>
                                <a href="${basePath}/group/apply"> 开设课程</a>
                            <#elseif loginUser??>
                                <a href="${basePath}/group/${loginUser.id}"> 选课</a>
                            </#if>
                            </li>
                            <li>
                            <#if loginUser?? && loginUser.isAdmin &gt; 0>
                                <a href="${basePath}/u/1/home/group"> 群组管理</a>
                            <#else>
                                <a href="${basePath}/u/2/home/group/"> 我的课表</a>
                            </#if>
                            </li>

                        </ul>
                        <ul class="nav navbar-top-links navbar-right">
                            <div class="header-action-btn">
                            <#if loginUser == null>
                                <li><a href="${basePath}/member/login">登录</a></li>
                                <li><a href="${basePath}/member/register">注册</a></li>
                            <#else>
                                <div class="btn-group nav-username">
                                    <img src="${basePath}${loginUser.avatar}" class="img-circle" width="25px" height="25px" style="margin-top: 1px;margin-right:5px;"/>
                                    <a class="header-action-link" href="javascript:void(0)">
                                        <#if loginUser?? && loginUser.isAdmin &gt; 0>
                                            教师
                                        <#else>
                                            学生
                                        </#if>
                                        <#if unReadMessageNum &gt; 0><i class="fa fa-comments"></i></#if>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="${basePath}/member/">个人中心</a></li>
                                        <li><a href="${basePath}/member/message">私信
                                            ${(unReadMessageNum > 0)?string("("+unReadMessageNum+")","")}
                                        </a></li>
                                        <li><a href="${basePath}/member/editInfo">设置</a></li>
                                        <li class="divider"></li>
                                        <li><a href="${basePath}/member/logout">退出</a></li>
                                    </ul>
                                    <script>
                                        $(function () {
                                            $(".nav-username").hover(function(){
                                                $(this).addClass("open");
                                            },function(){
                                                $(this).removeClass("open");
                                            });
                                        })
                                    </script>
                                </div>
                            </#if>
                            </div>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
