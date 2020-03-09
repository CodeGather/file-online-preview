<!DOCTYPE html>

<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<head>
    <style type="text/css">
        body{
            background-color: #CCB;
        }
        .container{
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            transform: translateY(-50%);
            text-align: center;
        }
        img{
            width:300px;
            height:auto;
            max-width:100%;
            max-height:100%;
            border-radius: 30px;
        }
    </style>
</head>
<body>
<div class="container">
    <p style="color: red;font-size: 30px">${msg}</p>
    <img src="images/sorry.jpg" />
    <p>由于您要预览的${fileType}文件${msg}</p>
    <p>系统暂时无法完成在线预览</p>
    <p>请联系管理员予以解决！</p>
</div>
</body>

</html>