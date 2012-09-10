<!DOCTYPE html>
<html lang="ja">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="content-script-type" content="text/javascript">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="http://vocalendar.jp/css/html5reset-1.6.1.css" media="all" />
	<link rel="stylesheet" href="/css/jquery.mobile-1.1.0.css" />
	<!--<script type="text/javascript" src="js/jquery.js"></script>//-->
	<!--<script type="text/javascript" src="js/smartphone.js"></script>//-->
	
	<!-- Google AJAX LIBRARIEs //-->
	<!-- 使用する場合はそれぞれの読み込み箇所を書き換え //-->
	<!-- ホストされているバージョンに注意 //-->
	<!-- http://code.google.com/intl/ja/apis/ajaxlibs/ //-->
	<script src="http://www.google.com/jsapi"></script>
	<script>google.load("jquery", "1.7.0");</script>
	<script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>
	<script src="/js/jquery.gcal_flow.js?1"></script>
	<script src="/js/jquery.autolink.js"></script>
	
	<style>
	body { text-align:left; font-family:sans-serif; }
	header { background-image:url(/images/vocalendar-smp-bgline.gif); font-size:90%; color:#444444; margin:0; padding:10px; line-height:125%; border-bottom:1px solid gray; }
	header p { margin:0 0 0.5em; padding:0; text-shadow: 0px 1px white; }
	header p.lead {
		font-weight:bold;
		color:#006D4E; }
	.VCLsmp .gcf-item-block { padding:10px 10px; border-top: 1px solid white; border-bottom:1px solid #cccccc; background-color:#f0f0f0;}
	.VCLsmp p { width:100%; word-wrap:break-word; }
	.VCLsmp .gcf-item-daterange { color:gray; font-size:90%; font-weight:bold; margin:0; padding:0;  }
	.VCLsmp .gcf-item-title { margin:0; padding:0; line-height:125%; color:#006D4E; font-size: 100%; }
	.VCLsmp .gcf-item-description { margin:10px 0 0; padding:0; line-height:135%; font-size:90%; color:#333333; }
	.VCLsmp .gcf-item-description a { color:#41A587; }
	h3 { background-image:url(/images/vocalendar-smp-title.png); -webkit-background-size: 150px 12px; -o-background-size: 150px 12px; background-size: 150px 12px; text-indent:-9999px; background-repeat:no-repeat; background-position:left center;}
	footer {
		border-top: 1px solid white;
		margin:0; padding: 10px;
		background-color: #e0e0e0;
		font-size: 70%; line-height: 130%;
		color: #666666;
	}
	.red { color:#ff4444; }
	.bold { font-weight:bold; }
        .navbar { border-bottom: 1px solid #999; }
        .navbar a { text-decoration: none; }
        .navbar .ui-btn { color: black; }
        .navbar .ui-btn-active { color: white; }
	</style>
	
</head>

<body>


<div data-role="page" id="page1">
                <?php require 'modules/sp-header.tpl' ?>
                <div data-role="navbar" class="navbar">
	          <ul>
		    <li><a class="ui-btn-active ui-state-persist" href="#page1">メイン</a></li>
		    <li><a class="ui-btn" href="#page2">放送系</a></li>
	          </ul>
                </div>
                <div id="VCLbody1">
		<section class="VCLsmp gcf-item-container-block">
			<article class="gcf-item-block">
				<h5 class="gcf-item-daterange"></h5>
				<h4 class="gcf-item-title"></h4>
				<p class="gcf-item-description"></p>
			</article>
		</section>
                </div>		
	</div>
<?php require 'modules/sp-footer.tpl' ?>	
</div>

<div data-role="page" id="page2">
                <?php require 'modules/sp-header.tpl' ?>
                <div data-role="navbar" class="navbar">
	          <ul>
		    <li><a class="ui-btn" href="#page1">メイン</a></li>
		    <li><a class="ui-btn-active ui-state-persist" href="#page2">放送系</a></li>
	          </ul>
                </div>
                <div id="VCLbody2">
		<section class="VCLsmp gcf-item-container-block">
			<article class="gcf-item-block">
				<h5 class="gcf-item-daterange"></h5>
				<h4 class="gcf-item-title"></h4>
				<p class="gcf-item-description"></p>
			</article>
		</section>
                </div>
	</div>
<?php require 'modules/sp-footer.tpl' ?>	
</div>


	
		<script type="text/javascript">
		$(function(){
			$('#VCLbody1').gCalFlow({
				calid: '0mprpb041vjq02lk80vtu6ajgo@group.calendar.google.com',
				maxitem: 25,
				auto_scroll: false,
				link_item_title: false,
				callback: function () {
					$(".gcf-item-description").autolink();
				}
			});
			$('#VCLbody2').gCalFlow({
				calid: '5fsoru1dfaga56mcleu5mp76kk@group.calendar.google.com',
				maxitem: 25,
				auto_scroll: false,
				link_item_title: false,
				callback: function () {
					$(".gcf-item-description").autolink();
				}
			});
		});
		</script>
	
</body>
</html>
