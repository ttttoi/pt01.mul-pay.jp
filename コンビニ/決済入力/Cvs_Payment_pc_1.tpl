<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="content-type" content="text/html; charset=Shift_JIS" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-style-Type" content="text/html; charset=Shift_JIS" />
	<title>コンビニ決済入力　Kanatta決済サービス</title>
	<link href="{$CSSPATH}/common.css" rel="stylesheet" type="text/css" />
	<link href="https://kanatta-lady.jp/bootstrap/css/elusive-webfont.css" rel="stylesheet" type="text/css" />
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
<div id="sub_menu">
            <div class="btn-pink">
                <a href="http://kanatta-lady.jp/projects">
                    <span class="el-icon-search"></span>
                    プロジェクトを探す
                </a>
            </div>
            <div class="btn-pink">
                <a href="http://kanatta-lady.jp/make">
                    <span class="el-icon-file-new"></span>
                    自分で作る
                </a>
            </div>
            <div class="btn-pink">
                <a href="http://kanatta-lady.jp/about">
                    <span class="el-icon-question"></span>
                    Kanatta?
                </a>
            </div>
                        <div class="btn-pink">
              <a href="http://kanatta-lady.jp/question">
                  <span class="el-icon-comment-alt"></span> よくある質問
              </a>
            </div>
            <div class="btn-pink">
              <a href="http://kanatta-lady.jp/contact">
                  <span class="el-icon-envelope"></span> お問い合わせ
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
			<li class="active">
				<a href="{$CancelURL|htmlspecialchars}">
					<span>マイページ</span>
				</a>
			</li>
			{if $SelectURL ne null}
			<li  class="active">
				<a href="{$SelectURL|htmlspecialchars}">
					<span>お支払方法の選択</span>
				</a>
			</li>
			{/if}
			<li  class="current">
				<span>必要事項を記入</span>
			</li>
			{if $Confirm eq '1'}
			<li>
				<span>確認して手続き</span>
			</li>
			{/if}
			<li>
				<span>お支払方法のご案内</span>
			</li>
		</ul>
	</div>

	<div class="main">

		{if  $CheckMessageArray neq null }
		<div id="GP_msg">
			<ul>
			{foreach item=message from=$CheckMessageArray}
				<li>{$message}</li>
			{/foreach}
			</ul>
		</div>
		{/if}

		<form action="{$ExecURL|htmlspecialchars}" onsubmit="return blockForm()" method="post">

			<p>{insert name="input_keyItems"}</p>

			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">ご利用内容</span>
						</h2>
					</div>
				</div>

				<div class="bl_body">

					<div>
						<table id="cartinfo" class="generic">
							<!-- <tr>
								<th>予約番号</th>
								<td>{$ReserveNo|htmlspecialchars}</td>
							</tr>
							<tr>
								<th>会員番号</th>
								<td>{$MemberNo|htmlspecialchars}</td>
							</tr> -->
							<tr>
								<th>リターン額</th>
								<td>{$Amount|number_format|htmlspecialchars}円</td>
							</tr>
							<tr>
								<th>手数料</th>
								<td>{$Tax|number_format|htmlspecialchars}円<span class="txt_margin">※kanattaでは一律216円手数料がかかります</span></td>
							</tr>
							<tr>
								<th>お支払合計</th>
								<td>{$Total|number_format|htmlspecialchars}円</td>
							</tr>
						</table>
					</div>

				</div>

			</div>
			
			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">コンビニエンスストア決済の必要事項をご記入ください。</span>
						</h2>
					</div>
				</div>

				<div class="bl_body">

					<table class="generic" summary="credit_1" id="credit">
						<tr>
							<th>ご利用するコンビニの選択</th>
							<td>{insert name="select_cvsCorpList"}</td>
						</tr>
						<tr>
							<th>氏名</th>
							<td>
								<input type="text" name="CustomerName" size='24' maxlength="20" value="{$CustomerName|htmlspecialchars}" />
								<p class="note">全角でご記入ください</p>
							</td>
						</tr>
						<tr>
							<th>フリガナ</th>
							<td>
								<input type="text" name="CustomerKana" size='24' maxlength="20" value="{$CustomerKana|htmlspecialchars}" />
								<p class="note">全角でご記入ください</p>
							</td>
						</tr>
						<tr>
							<th>電話番号</th>
							<td>
								<input type="tel" name="TelNo" size='15' maxlength="13" class="code" value="{$TelNo|htmlspecialchars}" />
							</td>
						</tr>
						<tr>
							<th>ご連絡先メールアドレス</th>
							<td>
								<input type="text" name="MailAddress" size='24' maxlength="256" value="{$MailAddress|htmlspecialchars}" />
							</td>
						</tr>
					</table>
					<div class="wrap-submit">
					<p class="control">
						<span class="submit">
							{if $Confirm eq "1"}
							<input type="submit" value="確認する" />
							{else}
							<input type="submit" value="決済する" />
							{/if}
						</span>
					</p>
						<p class="back-btn"><a href="{$SelectURL|htmlspecialchars}">戻る</a></p>
						</div>
				</div>
			</div>

			<br class="clear" />

		</form>
	</div>

</div>
</div>
{* デバッグが必要な場合、以下の行の * を削除して、コメントを外してください。 *}
{*insert name="debug_showAllVars"*}
<div class="footer-area">
	<img src="http://kanatta-lady.jp/img/common/footer-logo.png?1509083521" alt="">	<p class="foot_p01">
		<span class="foot_p01_s1">～ 女性エンジニアが作った<br>&nbsp;&nbsp;&nbsp;女性のためのクラウドファンディング ～</span><br>
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