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
	#VCLsmp .gcf-item-block { padding:10px 10px; border-top: 1px solid white; border-bottom:1px solid #cccccc; background-color:#f0f0f0;}
	#VCLsmp p { width:100%; word-wrap:break-word; }
	#VCLsmp .gcf-item-daterange { color:gray; font-size:90%; font-weight:bold; margin:0; padding:0;  }
	#VCLsmp .gcf-item-title { margin:0; padding:0; line-height:125%; color:#006D4E; font-size: 100%; }
	#VCLsmp .gcf-item-description { margin:10px 0 0; padding:0; line-height:135%; font-size:90%; color:#333333; }
	#VCLsmp .gcf-item-description a { color:#41A587; }
	h3 { background-image:url(/images/vocalendar-smp-title.png); -webkit-background-size:150px 12px; -o-background-size:150px 12px; text-indent:-9999px; background-repeat:no-repeat; background-position:left center;}
	footer {
		border-top: 1px solid white;
		margin:0; padding: 10px;
		background-color: #e0e0e0;
		font-size: 70%; line-height: 130%;
		color: #666666;
	}
	.red { color:#ff4444; }
	.bold { font-weight:bold; }
	</style>
	
</head>

<body>

<div data-role="page" id="page1">
<div data-theme="a" data-role="header" data-position="fixed">
<h3>VOCALENDAR</h3>
<a data-theme="a" data-role="button" data-inline="false" data-direction="reverse" href="http://vocalendar.jp/pc" data-icon="grid" data-iconpos="left" target="_blank">PC</a>

</div>
<div data-role="content" style="margin:0;padding:0;">

	<div id="VCLbody">
		
		<header>
			<p class="lead">VOCALENDARとは、VOCALOID™関連のイベントをまったり更新している備忘録的カレンダーです。現在「人力で」ボカロ関連イベントの情報編集を行なっています。</p>
			<p class="red bold">現在、スマホ版VOCALENDARでは放送系イベントの表示がされておりません。大変ご不便おかけしますが、放送系イベント情報につきましては改善されるまでの間はPC版のVOCALENDARをご利用くださいませ。</p>
			<p>掲載の内容は完全ではありませんし、公式の最新情報とは異なる場合があります。物販やイベント情報などは<span class="red">必ず各自で</span> 公式の情報を調べて内容をお確かめください。</p>
			<a href="https://twitter.com/share" class="twitter-share-button" data-text="ボカロ関連イベントの共有カレンダー【 VOCALENDAR / ボカレンダー 】" data-hashtags="vocalendar" data-url="http://vocalendar.jp/" data-related="vocalendar">Tweet</a>
			<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
			<!-- 告知エリア
			<p class="red">現在、イベント日時の「月」表示に異常があります。「日」表示は問題ありません。修正対応を行っています。ご迷惑おかけしますが、ご利用の際にはご注意ください。</p>
			//-->
		</header>
		
		<section id="VCLsmp" class="gcf-item-container-block">
			<article class="gcf-item-block">
				<h5 class="gcf-item-daterange"></h5>
				<h4 class="gcf-item-title"></h4>
				<p class="gcf-item-description"></p>
			</article>
		</section>
		
	</div>
	
	
	<footer>
		&copy; 2012 VOCALENDAR / <span class="red">現在BETA運用につきカレンダーがいきなりバグる(!)・突然消失(!!)するなどの不具合が予想されます。ひとまず眺めるだけに留めていただけると安心で嬉しい感じです。</span> / 当サイト『VOCALENDAR』に掲載されている情報は個人利用の範囲でご自由にお使いいただいて結構ですが、商用利用はご遠慮ください。 / イラストはイラストレーターさんの大切な作品です。無断使用・転載などはくれぐれもおやめください。 <span style="color:#999999">/ 当サイトで使用しているイラストはピアプロ・キャラクター・ライセンスに基づいてクリプトン・フューチャー・メディア株式会社のキャラクター「初音ミク」を描いたものです。 / VOCALOIDならびにボーカロイドはヤマハ株式会社の登録商標です。 / キャラクター名、その他の製品・商品名は各社の著作物であり、商標または登録商標です。</span>
	</footer>

</div>
</div>


	
		<script type="text/javascript">
		$(function(){
			$('#VCLbody').gCalFlow({
				calid: '0mprpb041vjq02lk80vtu6ajgo@group.calendar.google.com',
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