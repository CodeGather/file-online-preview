<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>PDF图片预览</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="js/lazyload.js"></script>
    <style>
        .container{
            width: 100%;
            height: 100%;
        }
        .img-area{
            text-align: center
        }
        .img-area img{
            width: 100%;
        }
        .switch-btn{
            position: fixed;
            cursor: pointer;
            bottom: 50px;
            right: 50px;
            z-index: 999;
            width: 50px;
            height: 50px;
            border-radius: 30px;
            border-color: #00b6ff91;
            background-color: #0081b5a6;
            color: white;
            outline: none;
            box-shadow: 0px 0px 10px 1px #0081b5a6;
        }
    </style>
</head>
<body bgcolor="#404040">
<div class="container">
    <#list imgurls as img>
        <div class="img-area">
            <img class="my-photo" alt="loading" title="查看大图" style="cursor: pointer;" data-src="${img}" src="images/loading.gif" onclick="changePreviewType('allImages')">
        </div>
    </#list>
</div>
<#--<img src="images/right.png" style="position: fixed; cursor: pointer; top: 40%; right: 60px; z-index: 999;" alt="使用PDF预览" title="使用PDF预览" onclick="changePreviewType('pdf')"/>-->
<#--<span class="fa fa-file-pdf-o fa-4x" style="position: fixed; cursor: pointer; top: 40%; right: 50px; z-index: 999;" title="使用PDF预览" onclick="changePreviewType('pdf')"></span>-->
<button class="switch-btn" onclick="changePreviewType('pdf')">切换<br />模式</button>
<script>
    window.onload=checkImgs;
    window.onscroll = throttle(checkImgs);
    function changePreviewType(previewType) {
        var url = window.location.href;
        if (url.indexOf("officePreviewType=image") != -1) {
            url = url.replace("officePreviewType=image", "officePreviewType="+previewType);
        } else {
            url = url + "&officePreviewType="+previewType;
        }
        if ('allImages' == previewType) {
            window.open(url)
        } else {
            window.location.href = url;
        }
    }
</script>
</body>
</html>