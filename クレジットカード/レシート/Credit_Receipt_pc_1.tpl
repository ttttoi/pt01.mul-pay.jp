<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="content-type" content="text/html; charset=Shift_JIS" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-style-Type" content="text/html; charset=Shift_JIS" />
	<title>クレジット決済レシートテンプレートサンプル　ＰＧマルチペイメントサービス</title>
	
	<link href="{$CSSPATH}/common.css" rel="stylesheet" type="text/css" />
	<link href="https://kanatta-lady.jp/css/pay_form.css" rel="stylesheet" type="text/css" />
<link href="http://kanatta-lady.jp/favicon.ico" type="image/x-icon" rel="icon"/><link href="http://kanatta-lady.jp/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
	
	{literal}
	<script type="text/javascript">
		var submitted = false
		function blockForm(){
			if( submitted ){
				return false
			}
			submitted = true
			return true
		}
	</script>
	{/literal}
	
</head>
<body>

<div id="menu_bar" class="">
        <div id="brand">
            <a href="http://kanatta-lady.jp/">
                <img src="http://kanatta-lady.jp/upload/Setting/1/logo/lkisubodyfthusr.png?1509374531" id="logo" alt="">            </a>
        </div>
        <div class="menu">
            <a href="http://kanatta-lady.jp/projects">
                <span class="img-icon-search"></span>
                <span class="hidden-sm hidden-xs">プロジェクトを</span>探す
            </a>
            <a href="http://kanatta-lady.jp/select">
                <span class="img-icon-file-new"></span>
                <span class="hidden-sm hidden-xs">プロジェクトを</span>作る
            </a>
			<span class="hidden-sm hidden-xs">
            <a href="http://kanatta-lady.jp/event">
                <span class="img-icon-flag"></span>イベント
            </a>
            </span>
            <a href="http://kanatta-lady.jp/about">
                <span class="img-icon-question"></span>
                Kanattaとは
            </a>
        </div>
<div class="icon-bar" href="http://kanatta-lady.jp/backed_projects/add/23/icon-bar" onclick="toggle_sub_menu();">
            <span class="el-icon-lines"></span>
        </div>
<div id="sub_menu" style="display: none;">
            <div>
                <a href="http://kanatta-lady.jp/projects">
                    <span class="el-icon-search"></span>
                    探す
                </a>
            </div>
            <div>
                <a href="http://kanatta-lady.jp/make">
                    <span class="el-icon-file-new"></span>
                    作る
                </a>
            </div>
            <div>
                <a href="http://kanatta-lady.jp/about">
                    <span class="el-icon-question"></span>
                    Kanattaとは
                </a>
            </div>
                    </div>
    </div>
<div class="wrapper">
<div class="bodyinner">

	<!--ヘッダー開始-->
	<div class="header">
		<h1>{$ShopName|htmlspecialchars } お支払手続き</h1>
	</div>

	<div class="flow">
		<ul>
			<li>
				<span>マイページ</span>
			</li>
			{if $SelectURL ne null}
			<li>
				<span>お支払方法の選択</span>
			</li>
			{/if}
			<li>
				<span>必要事項を記入</span>
			</li>
			{if $Confirm eq "1"}
			<li>
				<span>確認して手続き</span>
			</li>
			{/if}
			<li class="current">
				<span>お支払手続き完了</span>
			</li>
		</ul>
	</div>
	
	<div class="main">
	
		<form action="{$RetURL|htmlspecialchars}" method="post" onsubmit="return blockForm()">
		
			<p>{insert name="input_returnParams"}</p>
			
			<p class="txt">決済が完了しました。次へお進みください。</p>
		
			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">ご利用内容</span>
						</h2>
					</div>
				</div>
				
				<div class="bl_body">
		
					<table class="generic">
					{if $JobCd != "CHECK" }
					  <tr>
					    <th>金額</th>
					    <td >{$Amount|number_format|htmlspecialchars}円</td>
					  </tr>
					  <tr>
					    <th>税送料</th>
					    <td >{$Tax|number_format|htmlspecialchars}円</td>
					  </tr>
					  {/if}
					  <tr>
					    <th>:自由項目１名称:</th>
					    <td >{$ClientField1|htmlspecialchars}</td>
					  </tr>
					  <tr>
					    <th>:自由項目２名称:</th>
					    <td >{$ClientField2|htmlspecialchars}</td>
					  </tr>
					  <tr>
					    <th>:自由項目３名称:</th>
					    <td >{$ClientField3|htmlspecialchars}</td>
					  </tr>
					  <tr>
					    <th>支払方法</th>
					    <td >
					    	{$MethodName|htmlspecialchars}
							  {if $Method eq "2"}
						   	 /{$PayTimes|htmlspecialchars}回
						   	 {/if}
					   	 </td>
					  </tr>
					  <tr>
					    <th>カード番号</th>
					    <td >{$CardNo|htmlspecialchars}</td>
					  </tr>
					  <tr>
					    <th>有効期限(MM/YY)</th>
					    <td >{$ExpireMonth|htmlspecialchars}/{$ExpireYear|htmlspecialchars}</td>
					  </tr>
					</table>
					
					<div class="wrap-submit">
							<p class="control">

							<span class="submit">
								<input type="submit" value="進む" />
							</span>

							</p>
							<p class="back-btn"><a href="#" onclick="javascript:window.history.back(-1);return false;">戻る</a></p>
						</div>
					<br class="clear" />	
				</div>
				
			</div>
		</form>
	</div>
		
</div>
</div>
{* デバッグが必要な場合、以下の行の * を削除して、コメントを外してください。 *}
{*insert name="debug_showAllVars"*}
<div class="footer-area">
	<img src="http://kanatta-lady.jp/img/common/footer-logo.png?1509083521" alt="">	<p class="foot_p01">
		<span class="foot_p01_s1">〜 女性エンジニアが作った<br>&nbsp;&nbsp;&nbsp;女性のためのクラウドファンディング 〜</span><br>
		日々頑張っている女性の夢や理想をかなえるサービス
	</p>
</div>
<div id="footer">
    <div class="footer footer_pc footer-content">
   		<div class="foot_box clearfix">
    		<div id="fb-root"></div>
    		<div class="ftr_nav">
    			<div class="container clearfix">
    				<div class="ftr_nav_1 hidden-xs">
    					<p class="tit"><img src="http://kanatta-lady.jp/img/common/jewelry.png" alt="">プロジェクトを探す</p>
    					<ul class="txt10 footer-category">
    						<li><a href="http://kanatta-lady.jp/categories/12">フード</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/13">コミュニティ</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/19">エンタメ</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/21">テクノロジー</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/16">ファッション</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/4">ビューティー</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/20">アニメ</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/7">ビジネス</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/17">プロダクト</a></li>
    					</ul>
    					<ul class="txt10 footer-category">
    						<li><a href="http://kanatta-lady.jp/categories/18">パフォーマンス</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/15">アート</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/14">スポーツ</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/9">写真・映像</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/10">本・出版</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/11">音楽</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/6">教育・福祉</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/8">旅</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/5">社会貢献</a></li>
    					</ul>
    				</div>
    				<div class="ftr_nav_1">
    					<p class="tit"><img src="http://kanatta-lady.jp/img/common/jewelry.png">プロジェクトを始める</p>
    					<ul class="txt10">
    						<li><a href="http://kanatta-lady.jp/make">自分でつくる</a></li>
    						<li><a href="http://kanatta-lady.jp/consult">Kanattaスタッフに相談する</a></li>
    						<li><a href="http://kanatta-lady.jp/guideline">ガイドライン</a></li>
							<li><a href="http://kanatta-lady.jp/event">イベント</a></li>
    					</ul>
    				</div>
    				<div class="ftr_nav_1">
    					<p class="tit"><img src="http://kanatta-lady.jp/img/common/jewelry.png">Kanattaについて</p>
    					<ul class="txt10">
    						<li><a href="http://kanatta-lady.jp/about">Kanattaとは？</a></li>
    						<li><a href="http://kanatta-lady.jp/question">よくある質問</a></li>
    						<li><a href="http://kanatta-lady.jp/rule">利用規約</a></li>
    						<li><a href="http://kanatta-lady.jp/policy">プライバシーポリシー</a></li>
    						<li><a href="http://kanatta-lady.jp/tokutei">特定商取引法</a></li>
    						<li><a href="http://air-works.jp/">会社情報</a></li>
    						<li><a href="http://kanatta-lady.jp/contact">お問い合わせ</a></li>
    					</ul>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
	<div class="footer-bottom">
        <div>
            &copy; 2017 株式会社AIR        </div>
	</div>
</div>
</body>
</html>