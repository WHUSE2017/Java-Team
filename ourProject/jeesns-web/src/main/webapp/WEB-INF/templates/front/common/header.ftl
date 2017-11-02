<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header m-navbar-header">
            <img src="${basePath}/res/common/images/headerlogo.png" height="50px"/>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <#--<li><a href="${basePath}/member/">个人中心</a></li>-->
 <!--            <li><a href="${basePath}/article/list">文章</a></li>            -->
 <!--             <li><a href="${basePath}/weibo/list">${WEIBO_ALIAS}</a></li>  -->
  <!--               <li><a href="${basePath}/u/2/home/group/">我的群组</a></li>  -->
 <!--             <li><a href="${basePath}/action/list">动态</a></li>            -->
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