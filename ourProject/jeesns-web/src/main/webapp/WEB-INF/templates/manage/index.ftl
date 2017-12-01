<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>JEESNS后台管理首页 - ${SITE_NAME} - JEESNS后台管理系统 - Powered By JEESNS</title>
    <meta name="keywords" content="${SITE_KEYS}"/>
    <meta name="description" content="${SITE_DESCRIPTION}"/>
    <meta name="author" content="JEESNS"/>
    <link href="${basePath}/res/common/css/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/res/common/css/font-awesome.min.css" rel="stylesheet">
    <link href="${basePath}/res/manage/css/AdminLTE.css" rel="stylesheet">
    <link href="${basePath}/res/manage/css/skins/_all-skins.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${basePath}/res/common/js/html5shiv.min.js"></script>
    <script src="${basePath}/res/common/js/respond.min.js"></script>
    <![endif]-->
    <script src="${basePath}/res/common/js/jquery-2.1.1.min.js"></script>
    <script src="${basePath}/res/common/js/bootstrap.min.js"></script>
    <script src="${basePath}/res/plugins/layer/layer.js"></script>
    <script src="${basePath}/res/manage/js/app.js"></script>
    <script src="${basePath}/res/common/js/jeesns.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<#include "/manage/common/header.ftl"/>
    <div class="content-wrapper">
        <section class="content">
            <div class="box-body">
                <div class="row">
                    <div class="alert alert-info alert-dismissible">
                     
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-body">
                            <p>
                                
                                <a href="http://www.jeesns.cn" target="_blank">www.jeesns.cn</a>。
                            </p>
                            <p>
                              
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-body">
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="col-sm-6">
                                <p>JAVA版本:${javaVersion}</p>
                                <p>MYSQL版本:${mysqlVersion}</p>
                                <p>WEB服务器:${webVersion}</p>
                                <p>CPU个数:${cpu}</p>
                                <p>虚拟机内存总量:${totalMemory}</p>
                                <p>虚拟机空闲内存量:${freeMemory}</p>
                                <p>虚拟机使用的最大内存量:${maxMemory}</p>
                            </div>
                            <div class="col-sm-6">
                                <p>客户端IP:${clientIP}</p>
                                <p>服务器IP:${serverIP}</p>
                                <p>操作系统:${osName}</p>
                                <p>用户主目录:${userHome}</p>
                                <p>工作目录:${userDir}</p>
                                <p>系统目录:${webRootPath}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box box-primary">
                        <div class="box-body">
                            <p>系统支持:${systemName}</p>
                            <p>当前版本:${systemVersion}</p>
                            <p>当前版本更新时间:${systemUpdateTime}</p>
                            <p>最新版本:<span class="lastSystemVersion"></span> &nbsp;&nbsp;
                                <a href="http://www.jeesns.cn" target="_blank">官网查看</a></p>
                            <p>最新版本更新时间:<span class="lastSystemUpdateTime"></span></p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h5 class="box-title">二次开发</h5>
                        </div>
                        <div class="box-body">
                            <p> </p>
                            <p> </p>
                            <ol>
                                <li>网站定制开发</li>
                                <li>仿站服务</li>
                                <li>APP开发</li>
                                <li>微信开发等</li>
                                <li>......</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h5 class="box-title"> </h5>
                        </div>
                        <div class="box-body">
                            <p></p>
                            <ol>
                                <li> </li>
                                <li> </li>
                                <li> </li>
                                <li> </li>
                                <li> </li>
                                <li>……</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h5 class="box-title">更新日志</h5>
                        </div>
                        <div class="box-body">
                            <div class="panel-body">
                                <div class="panel-group" id="version">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version"
                                                   href="#v102">v1.0.2</a><code class="pull-right">2017.4.17</code>
                                            </h5>
                                        </div>
                                        <div id="v102" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <div class="alert alert-success">
                                                    <ul>
                                                        <li>增加找人该功能</li>
                                                        <li>可以实现上传图片功能</li>
                                                        <li>实现上传文件、PPT、压缩文件</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version"
                                                   href="#v101">v1.0.1</a><code class="pull-right">2017.4.10</code>
                                            </h5>
                                        </div>
                                        <div id="v101" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div class="alert alert-success">
                                                    <ul>
                                                        <li>增加找人该功能</li>
                                                        <li>可以实现上传图片功能</li>
                                                        <li>实现上传文件、PPT、压缩文件</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version"
                                                   href="#v10">v1.0</a><code class="pull-right">2017.3.14</code>
                                            </h5>
                                        </div>
                                        <div id="v10" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div class="alert alert-success">
                                                    <ul>
                                                     <li>增加找人该功能</li>
                                                        <li>可以实现上传图片功能</li>
                                                        <li>实现上传文件、PPT、压缩文件</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version"
                                                   href="#v08">v0.8</a><code class="pull-right">2017.2.17</code>
                                            </h5>
                                        </div>
                                        <div id="v08" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div class="alert alert-success">
                                                    <ul>
                                                         <li>增加找人该功能</li>
                                                        <li>可以实现上传图片功能</li>
                                                        <li>实现上传文件、PPT、压缩文件</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version"
                                                   href="#v05">v0.5</a><code class="pull-right">2017.2.7</code>
                                            </h5>
                                        </div>
                                        <div id="v05" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <div class="alert alert-success">此版本是一个预览版本，让我们共同期待1.0版的到来</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
<#include "/manage/common/footer.ftl"/>
</div>
<script>
    $(document).ready(function () {
        $.getJSON("http://www.jeesns.cn/newVersion?callback=?", function(result){
            $(".lastSystemVersion").html(result.LAST_SYSTEM_VERSION);
            $(".lastSystemUpdateTime").html(result.LAST_SYSTEM_UPDATE_TIME);
        });
    });
</script>
</body>
</html>
