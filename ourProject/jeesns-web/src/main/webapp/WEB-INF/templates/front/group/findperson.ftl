<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>找人 - 查找名字 - Powered By JavaTeam</title>
    <link href="${basePath}/res/common/css/zui.min.css" rel="stylesheet">
    <link href="${basePath}/res/front/css/app.css" rel="stylesheet">
    <link href="${basePath}/res/plugins/webuploader/webuploader.css" rel="stylesheet">
    <link href="${basePath}/res/plugins/layer/skin/layer.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${basePath}/res/common/js/html5shiv.js"></script>
    <script src="${basePath}/res/common/js/respond.min.js"></script>
    <![endif]-->
    <script src="${basePath}/res/common/js/jquery-2.1.1.min.js"></script>
    <script src="${basePath}/res/common/js/jquery.form.js"></script>
    <script src="${basePath}/res/common/js/zui.min.js"></script>
    <script src="${basePath}/res/plugins/layer/layer.js"></script>
    <script src="${basePath}/res/front/js/jeesns.js"></script>
    <script src="${basePath}/res/plugins/webuploader/webuploader.min.js"></script>
    <script src="${basePath}/res/plugins/jquerytags/js/jquery.tags.js"></script>
    <script type="text/javascript">
        var basePath = "${basePath}";
        var uploadServer = "${basePath}/uploadImage";
    </script>
    <script src="${basePath}/res/plugins/webuploader/upload.js"></script>
</head>
<body class="gray-bg">
<#include "/${frontTemplate}/common/header.ftl"/>
<div class="container">
    <div class="main-content">
        <div class="row">
            <div class="col-md-12 article-detail">
                <form class="form-horizontal jeesns_form" role="form" action="${basePath}/group/findpersonDetail"
                      method="post">
                    <input type="hidden" class="form-control" id="id" name="id">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">名字</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="personName" name="personName" placeholder="名字"
                                   data-type="require" >
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-8">
                            <button type="submit" class="btn btn-info jeesns-submit">查找</button>
                            
                        </div>
                    </div>
              
                  
                </form>
            </div>
        </div>
    </div>
</div>
<#include "/${frontTemplate}/common/footer.ftl"/>
<script>

</script>
</body>
</html>