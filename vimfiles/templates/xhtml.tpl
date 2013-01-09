<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>demo</title>
	<style type="text/css">
        /*** create by hap 2012 ***/

        #page,#content {width:100%;}
        /***#f-wrap reset样式
        ***********************************************************/
        body{margin:0;padding:0;}
        .f-wrap h1, .f-wrap h2, .f-wrap h3, .f-wrap h4 , .f-wrap p, .f-wrap img, .f-wrap ul, .f-wrap li, .f-wrap a, .f-wrap span {margin:0;padding:0;}
        .f-wrap li{list-style:none;}
        .f-wrap img {border:0 none;vertical-align:top;}
        .f-wrap .f-cf:after{display:block;visibility:hidden;font-size:0;line-height:0;clear:both;content:"";}  
        .f-wrap .f-cf{zoom:1;}
        .f-wrap {color:#000;font:normal 12px/1.5 "宋体","Simsun","Tahoma",sans-serif;width:100%;}
        .f-wrap a{text-decoration:none;}
        .f-wrap a:hover{text-decoration:underline;}
		.f-foot{padding-bottom:50px;}
		.f-foot li{padding-top:6px;}
		.f-foot .banner180 li{float:left;width:180px;margin:0 5px;overflow:hidden;}
		.f-foot .banner230{margin-left:-10px;}
		.f-foot .banner230 li{float:left;width:230px;margin-left:10px;overflow:hidden;}
        .f-foot .w950 ul {padding-left:20px;}
		.f-foot .w950 li{width:950px;}
        .f-foot .w950 li img {width:950px;}

		/***#f-wrap 独立公用样式
		***********************************************************/
        .f-head, .f-body, .f-foot {width:990px;margin:0 auto;}

	</style>	
</head>
<body>
	<div id="f-wrap" class="f-wrap">
		<div class="f-head">

		</div>
		<div class="f-body">

		</div>
		<div class="f-foot">
            <div class="w950">
                <ul class="banner950">
				    <cms:custom title="banner" group="BANNER" fields="img:图片(宽950):string,href:图片链接:string" defaultRow="5" row="100">
				    #foreach($item in $customList)
				    <li><a href="$item.href" target="_blank"><img src="$item.img" /></a></li>
				    #end
				    </cms:custom>
	            </ul>
		    </div> 
		</div>
	</div>
</body>
</html>
