<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja-JP" xml:lang="ja-JP">
<head>
	<meta http-equiv="content-type" content="text/html; charset=Shift_JIS" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="content-script-type" content="text/javascript" />
	<script type="text/javascript" src="https://.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script type="text/javascript" src="https://kanatta-lady.jp/js/site.js"></script>
	<meta http-equiv="content-style-type" content="text/css" />
	<link href="{$CSSPATH}/common.css" rel="stylesheet" type="text/css" />
	<link href="https://kanatta-lady.jp/bootstrap/css/elusive-webfont.css" rel="stylesheet" type="text/css" />
	<link href="https://kanatta-lady.jp/css/pay_form.css" rel="stylesheet" type="text/css" />
<link href="http://kanatta-lady.jp/favicon.ico" type="image/x-icon" rel="icon"/><link href="http://kanatta-lady.jp/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
	<title>お支払い方法選択ページ</title>

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
<div class="wrapper select-wrap">
<div class="bodyinner">

	<!--ヘッダー開始-->
	<div class="header">
		<h1>{$ShopName|htmlspecialchars }支払方法選択</h1>
	</div>

	<div class="flow">
		<ul>
			<li class="active">
				<a href="{$CancelURL|htmlspecialchars}">
					<span>マイページ</span>
				</a>
			</li>
			<li class="current">
				<span>お支払方法の選択</span>
			</li>
			<li>
				<span>必要事項を記入</span>
			</li>
			{if $Confirm eq '1'}
			<li>
				<span>確認して手続き</span>
			</li>
			{/if}
			<li>
				<span>お支払手続き完了</span>
			</li>
		</ul>
	</div>

	<div class="main">

		<p class="txt">お支払方法を選択いただき、お進みください。</p>

		{if  $CheckMessageArray neq null }
		<div id="GP_msg">
			<ul>
			{foreach item=message from=$CheckMessageArray}
				<li>{$message}</li>
			{/foreach}
			</ul>
		</div>
		{/if}

		<form action="{$SelectURL|htmlspecialchars}" onsubmit="return blockForm()" method="post">
			<p>
			{insert name="input_keyItems"}
			</p>
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
							<span class="p">お支払方法をお選びください。</span>
						</h2>
					</div>
				</div>

				<div class="bl_body">

					<div class="paytypelist">
{*
						{insert name="radio_paymentType"}
-- *}
{* ++支払方法の選択肢をカスタマイズしたい場合は、上記の"radio_paymentType"行をコメントアウトし、以下をご利用ください  *}
						<ul>
							<li>
								<input type="radio" name="PayType" value="credit" id="paytype_credit"/><label for="paytype_credit">クレジットカード</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="cvs" id="paytype_cvs"/><label for="paytype_cvs">コンビニエンスストア</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="virtualaccount" id="paytype_virtualaccount"/><label for="paytype_virtualaccount">銀行振込</label>
								<span>※銀行振込の場合は必要事項を記入頂く必要はございません。</span>
							</li>
							<!--<li>
								<input type="radio" name="PayType" value="bitcoin" id="paytype_bitcoin"/><label for="paytype_bitcoin">ビットコイン</label>
							</li>-->
{*
							<li>
								<input type="radio" name="PayType" value="edy" id="paytype_edy"/><label for="paytype_edy">楽天Edy</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="suica" id="paytype_suica"/><label for="paytype_suica">モバイルSuica</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="payeasy" id="paytype_payeasy"/><label for="paytype_payeasy">Pay-easy</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="paypal" id="paytype_paypal"/><label for="paytype_paypal">PayPal</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="netid" id="paytype_netid"/><label for="paytype_netid">ネットiD</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="webmoney" id="paytype_webmoney"/><label for="paytype_webmoney">WebMoney</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="au" id="paytype_au"/><label for="paytype_au">au</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="docomo" id="paytype_docomo"/><label for="paytype_docomo">docomo</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="sb" id="paytype_sb"/><label for="paytype_sb">ソフトバンクまとめて支払い(Ｂ)</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="jibun" id="paytype_jibun"/><label for="paytype_jibun">じぶん銀行</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="jcbPreca" id="paytype_jcbpreca"/><label for="paytype_jcbpreca">JCB PREMO</label>
							</li>
							<li>
								<fieldset>
									<legend><input type="radio" name="PayType" value="netcash" id="paytype_netcash"/><label for="paytype_netcash">NET CASH</label></legend>
									<div style="padding-left: 20px;"><input type="radio" name="netcash_paytype" value="NETCASH" id="netcash_paytype_netcash" /><label for="netcash_paytype_netcash">NET CASH</label></div>
									<div style="padding-left: 20px;"><input type="radio" name="netcash_paytype" value="NNCGIFT" id="netcash_paytype_nncgift" /><label for="netcash_paytype_nncgift">nanacoギフト</label></div>
								</fieldset>
							</li>
							<li>
								<input type="radio" name="PayType" value="rakutenid" id="paytype_rakutenid"/><label for="paytype_rakutenid">楽天ID</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="linepay" id="paytype_linepay"/><label for="paytype_linepay">LINE Pay決済</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="unionpay" id="paytype_unionpay"/><label for="paytype_unionpay">ネット銀聯決済</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="recruit" id="paytype_recruit"/><label for="paytype_recruit">リクルートかんたん支払い決済</label>
							</li>
*}
						</ul>

						<div class="wrap-submit">
							<p class="control">

							<span class="submit">
								<input type="submit" value="次へ" />
							</span>

							</p>
							<p class="back-btn"><a href="#" onclick="javascript:window.history.back(-1);return false;">戻る</a></p>
						</div>

					</div>

				</div>

			</div>

			<br class="clear" />

		</form>
		<div class="about_payment">
    <h3>お読みください</h3>
    <dl>
        <dt>【ご確認①】</dt>
        <dd>Kanattaは起案者の能力やプロジェクトの実行を保証するものではありません。
プロジェクトの実行やリターンの発送（履行）などは、全て起案者の責任のもと行われます。</dd>
        <dt>【ご確認②】</dt>
        <dt>All in、ファンクラブ</dt>
        <dd>目標到達に関わらず、プロジェクト支援を行った時点で支援金の決済が行われます。</dd>
        <dt>All or Nothing</dt>
        <dd>募集終了日時の23:59までに支援総額が目標金額に達しない場合は、プロジェクト不成立となり支援金の決済はされません。また、リターンも発送（履行）されません。</dd>
        <dt>【SORRY】</dt>
        <dd>Order from oversea is unavailable and in preparation now.</dd>
    </dl>
    <h3>選べる4つのお支払い方法</h3>
    <dl>
        <dt>クレジットカード払い</dt>
        <dd>有効期限が残り100日以上のクレジットカードでご利用いただけます。</dd>
        <dt>コンビニ払い</dt>
        <dd>全国の主要なコンビニエンスストア（セブンイレブンを除く）でご利用いただけます。<br>ご利用は、支援金額が30万円以下の場合で支援日時が募集終了日から2日前の18時までに限られます。</dd>
        <dt>銀行振込</dt>
        <dd>全国の金融機関ATMまたはネットバンキングにてご利用いただけます。<br>ご利用は、支援金額が90万円以下の場合で支援日時が募集終了日から2日前の18時までに限られます。</dd>
        <dt>ビットコイン決済</dt>
        <dd>お持ちのビットコインで支援金の決済が可能です。<br>ビットコインを入手するには、ビットコインのウォレットを用意する必要があります。<br><a href="https://coincheck.com/ja/documents/about" target="_blank">（ビットコインの概要・入手方法について）</a></dd>
    </dl>
</div>

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