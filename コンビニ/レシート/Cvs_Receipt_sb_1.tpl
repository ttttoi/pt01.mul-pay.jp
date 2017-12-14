<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="content-type" content="text/html; charset=Shift_JIS" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-style-Type" content="text/html; charset=Shift_JIS" />
	<title>コンビニエンスストア決済レシートル　Kanatta決済サービス</title>

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
				<span>お支払方法のご案内</span>
			</li>
		</ul>
	</div>

	<div class="main">
		<p class="txt_recipt">コンビニエンスストアお支払い申し込みが完了しました。下記の手順でお支払いください。</p>
		<p class="txt_recipt">お支払いの際、このページに記載された番号が必要になります。メモを取るか、このページを印刷してお持ちください。</p>

		{if $CvsCode ne '00007' && $CvsCode ne '10001' && $CvsCode ne '10002' && $CvsCode ne '10005' && $CvsCode ne '10003' && $CvsCode ne '10004' && $CvsCode ne '10008'}
		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">ローソン／ミニストップでお支払いの場合</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>お客様番号</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>確認番号</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>支払期限</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					お支払いの前にお読みください
					<ul>
						<li>Loppiのあるローソン、またはミニストップ全店でお支払いいただけます。<br />Loppiで申込券を発行してから30分以内にレジでお支払いください。</li>
						<li>お支払いの際、お客様番号と確認番号が必要です。<br />メモを取るか、このページを印刷して、コンビニまでお持ちください。</li>
						<li>取扱明細兼受領書が領収書となりますので、お支払い後必ずお受け取りください。</li>
					</ul>
					<p class="note">
					※30万円を超えるお支払いはできません。<br />
					※コンビニ店頭でのお支払いには楽天Edyはご利用いただけません。現金でお支払いください。
					</p>
					<dl>
						<dd>
							<ol>
								<li>トップページより「各種サービスメニュー」を選択してください。</li>
								<li>上から4番目  ￥マークのボタン「各種代金・料金お支払い/～」を選択してください。</li>
								<li>続いて「各種代金お支払い」を選択してください。</li>
								<li>「各種代金お支払い」のページで「マルチペイメントサービス」を選択してください。</li>
								<li>サービス内容をご確認後、よろしければ「はい」を選択してください。</li>
								<li>お客様番号 を入力し、「次へ」を選択してください。</li>
								<li>確認番号 を入力し、「次へ」を選択してください。</li>
								<li>表示される内容を確認のうえ、「了解」を選択してください。</li>
								<li>お支払い時の注意事項をご確認後、よろしければ「はい」を選択してください。</li>
								<li>印刷された申込券をレジに渡し、30分以内に現金でお支払いください。</li>
								<li>お支払い後、「取扱明細兼受領書」を必ずお受け取りください。</li>
							</ol>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">ファミリーマートでお支払いの場合</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>お客様番号</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>確認番号</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>支払期限</dt>
					<dd>
						{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					お支払いの前にお読みください
					<ul>
						<li>Famiポートのあるファミリーマート全店でお支払いいただけます。<br />Famiポートで申込券を発行してから30分以内にレジでお支払いください。</li>
						<li>お支払いの際、お客様番号と確認番号が必要です。<br />メモを取るか、このページを印刷して、コンビニまでお持ちください。</li>
						<li>取扱明細兼受領書が領収書となりますので、お支払い後必ずお受け取りください。</li>
					</ul>
					<p class="note">
					※30万円を超えるお支払いはできません。<br />
					※コンビニ店頭でのお支払いには楽天Edyはご利用いただけません。現金でお支払いください。
					</p>
					<dl>
						<dd>
							<ol>
								<li>トップページより「コンビニでお支払い」を選択してください。</li>
								<li>「代金お支払い」のページで「各種番号をお持ちの方はこちら」を選択してください。</li>
								<li>お客様番号 を入力し、「OK」を選択してください。</li>
								<li>確認番号 を入力し、「OK」を選択してください。</li>
								<li>お支払い内容を確認のうえ、「確認」を選択してください。</li>
								<li>印刷された申込券をレジに渡し、30分以内に現金でお支払いください。</li>
								<li>お支払い後、「取扱明細兼受領書」を必ずお受け取りください。</li>
							</ol>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">サークルＫサンクスでお支払いの場合</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>お客様番号</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>確認番号</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>支払期限</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					お支払いの前にお読みください
					<ul>
						<li>ＫステーションのあるサークルＫサンクス全店でお支払いいただけます。<br />Ｋステーションで申込券を発行してから30分以内にレジでお支払いください。</li>
						<li>お支払いの際、お客様番号と確認番号が必要です。<br />メモを取るか、このページを印刷して、コンビニまでお持ちください。</li>
						<li>取扱明細兼受領書が領収書となりますので、お支払い後必ずお受け取りください。</li>
					</ul>
					<p class="note">
					※30万円を超えるお支払いはできません。<br />
					※コンビニ店頭でのお支払いには楽天Edyはご利用いただけません。現金でお支払いください。
					</p>
					<dl>
						<dd>
							<ol>
								<li>トップページより画面中央部分の「各種支払い」を選択してください。</li>
								<li>「11ケタ等の番号をお持ちの方」を選択してください。</li>
								<li>「各種代金お支払い（お支払いの選択）」のページで「マルチペイメントサービス」を選択してください。</li>
								<li>サービス受付完了までの流れを確認のうえ、「次に進む」を選択してください。</li>
								<li>お客様番号 を入力し、「次に進む」を選択してください。</li>
								<li>確認番号 を入力し、「次に進む」を選択してください。</li>
								<li>入力情報に間違いがないかを確認のうえ、「次に進む」を選択してください。</li>
								<li>お支払い内容を確認のうえ、「次に進む」を選択してください。</li>
								<li>印刷された申込券をレジに渡し、30分以内に現金でお支払いください。</li>
								<li>お支払い後、「取扱明細兼受領書」を必ずお受け取りください。</li>
							</ol>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">セイコーマートでお支払いの場合</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>オンライン決済番号</dt>
					<dd>{$CvsReceiptNo_Format|htmlspecialchars}</dd>
					<dt>支払期限</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					お支払いの前にお読みください
					<ul>
						<li>クラブステーションのあるセイコーマート全店でお支払いいただけます。<br />クラブステーションで申込券を発行してから30分以内にレジでお支払いください。</li>
						<li>お支払いの際、オンライン決済番号が必要です。<br />メモを取るか、このページを印刷して、コンビニまでお持ちください。</li>
						<li>取扱明細兼受領書が領収書となりますので、お支払い後必ずお受け取りください。</li>
					</ul>
					<p class="note">
					※30万円を超えるお支払いはできません。<br />
					※コンビニ店頭でのお支払いには楽天Edyはご利用いただけません。現金でお支払いください。
					</p>
					<dl>
						<dd>
							<ol>
								<li>トップページより左下のボタン「インターネット受付　各種代金お支払い」を選択してください。</li>
								<li>「オンライン決済番号（11桁）」のハイフンを除いて入力し、「次のページ」を選択してください。</li>
								<li>入力情報に間違いがないかを確認のうえ、「次のページ」を選択してください。</li>
								<li>お支払い内容を確認のうえ、「印刷」を選択してください。</li>
								<li>印刷された受付票をレジに渡し、30分以内に現金でお支払いください。</li>
								<li>お支払い後、「取扱明細兼受領書」を必ずお受け取りください。</li>
							</ol>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">デイリーヤマザキ／スリーエフでお支払いの場合</span>
					</h2>
				</div>
			</div>
			<div class="bl_body information">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>オンライン決済番号</dt>
					<dd>{$CvsReceiptNo_Format|htmlspecialchars}</dd>
					<dt>支払期限</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
					</dd>
				</dl>
				<div class="information">
				お支払いの前にお読みください
					<ul>
						<li>「オンライン決済」と店員にお伝えください。
							デイリーヤマザキと同系列のヤマザキデイリーストアーでもお支払いいただけます。
							お支払い方法はデイリーヤマザキと同様です。</li>
						<li>お支払いの際、オンライン決済番号が必要です。
							メモを取るか、このページを印刷して、コンビニまでお持ちください。</li>
						<li>取扱明細兼受領書が領収書となりますので、お支払い後必ずお受け取りください。</li>
					</ul>
					<p class="note">
					※30万円を超えるお支払いはできません。<br />
					※コンビニ店頭でのお支払いには楽天Edyはご利用いただけません。現金でお支払いください。
					</p>
					<ol>
						<li>コンビニのレジスタッフに、上記オンライン決済番号をご提示して頂き、「オンライン決済」希望とお伝えください。</li>
						<li>スタッフがレジを操作後に、入力画面が表示されますので、お客様がオンライン決済番号をご入力ください。</li>
						<li>お支払い内容が表示されますので、内容が正しいことをご確認のうえ、「確定」を押してください。</li>
						<li>現金で商品代金をお支払いください。</li>
						<li>領収書(レシート形式)が発行されますので、必ずお受け取りください。</li>
					</ol>
				</div>
			</div>
		</div>
		{/if}

		{if $CvsCode eq '00007'}
		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">セブンイレブンでのお支払い方法</span>
					</h2>
				</div>
			</div>
			<div class="bl_body information">
				<div class="information">
					払込票番号をメモして最寄のセブンイレブンのレジにてお支払いください。
					<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
						<dt>払込票番号</dt>
						<dd>
							{$CvsReceiptNo|htmlspecialchars}
							{if $CvsReceiptUrl ne null}
							&nbsp;&nbsp;<a target="_blank" href="{$CvsReceiptUrl|htmlspecialchars}">[払込票表示]</a>
							{/if}
						</dd>
						<dt>支払期限</dt>
						<dd>
							{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
						</dd>
					</dl>
				</div>
			</div>
		</div>
		{/if}

		{if $CvsCode eq '10001' || $CvsCode eq '10005'}
		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">ローソン／ミニストップでお支払いの場合</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>お客様番号</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>確認番号</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>支払期限</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					お支払いの前にお読みください
					<ul>
						<li>Loppiのあるローソン、またはミニストップ全店でお支払いいただけます。<br />Loppiで申込券を発行してから30分以内にレジでお支払いください。</li>
						<li>お支払いの際、お客様番号と確認番号が必要です。<br />メモを取るか、このページを印刷して、コンビニまでお持ちください。</li>
						<li>取扱明細兼受領書が領収書となりますので、お支払い後必ずお受け取りください。</li>
					</ul>
					<p class="note">
					※30万円を超えるお支払いはできません。<br />
					※コンビニ店頭でのお支払いには楽天Edyはご利用いただけません。現金でお支払いください。
					</p>
					<dl>
						<dd>
							<ol>
								<li>トップページより「各種番号をお持ちの方」を選択してください。</li>
								<li>お客様番号 を入力し「次へ」を選択してください。</li>
								<li>確認番号 を入力し、「次へ」を選択してください。</li>
								<li>表示される内容を確認のうえ、「はい」を選択してください。</li>
								<li>印刷された申込券をレジに渡し、30分以内に現金でお支払いください。</li>
								<li>お支払い後、「取扱明細兼受領書」を必ずお受け取りください。</li>
							</ol>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		{/if}

		{if $CvsCode eq '10002'}
		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">ファミリーマートでお支払いの場合</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>第１番号（企業コード）</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>第２番号（注文番号）</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>支払期限</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					お支払いの前にお読みください
					<ul>
						<li>Famiポートのあるファミリーマート全店でお支払いいただけます。<br />Famiポートで申込券を発行してから30分以内にレジでお支払いください。</li>
						<li>Famiポートでお支払いの場合<br />お支払いの際、お客様番号と確認番号が必要です。<br />メモを取るか、このページを印刷して、コンビニまでお持ちください。</li>
						<li>バーコードでのお支払いの場合<br />お支払い方法に記載のURLからバーコードを取得後、コンビニのレジにご提示ください。<br />スマートフォンのみご利用いただけます。</li>
						<li>取扱明細兼受領書が領収書となりますので、お支払い後必ずお受け取りください。</li>
					</ul>
					<p class="note">
					※30万円を超えるお支払いはできません。<br />
					※コンビニ店頭でのお支払いには楽天Edyはご利用いただけません。現金でお支払いください。
					</p>
					<dl>
						<dd>
							<ol>
							<h2>
							<span class="p">Famiポートでのお支払いの場合</span>
							</h2>
								<li>トップページより「代金支払い（コンビニでお支払い）」を選択してください。</li>
								<li>「代金お支払い」のページで「各種番号をお持ちの方はこちら」を選択してください。</li>
								<li>「番号入力画面に進む」を選択してください。</li>
								<li>第１番号（企業コード）(5桁) を入力し、「OK」を選択してください。</li>
								<li>第２番号（注文番号）(12桁) を入力し、「OK」を選択してください。</li>
								<li>お支払い内容を確認のうえ、「確認」を選択してください。</li>
								<li>印刷された申込券をレジに渡し、30分以内にお支払いください。</li>
								<li>お支払い後、「取扱明細兼受領書」を必ずお受け取りください。</li>
							</ol>
							<ol>
							<h2>
							<span class="p">バーコードでのお支払いの場合</span>
							</h2>
								<li>バーコードURLをご参照ください。お支払い用バーコードが表示されます。</li>
								<li>バーコードをコンビニのレジにて提示し、お支払いください。</li>
								<li>お支払い後、「取扱明細兼受領書」を必ずお受け取りください。<br />(バーコード取り扱い不可の場合はFamiポートでお支払いいただきます。)</li>
							</ol>
							<br />
					<div class="warn">
						<p class="txt">下記から電子バーコードを取得することができます。</p>
							<a href="https://ncpfa.famima.com/prd/ebcweb?firstKey={$CvsConfNo|htmlspecialchars}&secondKey={$CvsReceiptNo|htmlspecialchars}&cpNo=001&gyNo=00">https://ncpfa.famima.com/prd/ebcweb?firstKey={$CvsConfNo|htmlspecialchars}&secondKey={$CvsReceiptNo|htmlspecialchars}&cpNo=001&gyNo=00</a>
							<br class="clear" />
						</form>
						<br class="clear" />
					</div>



						</dd>
					</dl>
				</div>
			</div>
		</div>
		{/if}

		{if $CvsCode eq '10003' || $CvsCode eq '10004'}
		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">サークルＫサンクスでお支払いの場合</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>受付番号</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>申込番号</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>支払期限</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					お支払いの前にお読みください
					<ul>
						<li>ＫステーションのあるサークルＫサンクス全店でお支払いいただけます。<br />Ｋステーションで申込券を発行してから30分以内にレジでお支払いください。</li>
						<li>お支払いの際、受付番号と申込番号が必要です。<br />メモを取るか、このページを印刷して、コンビニまでお持ちください。</li>
					</ul>
					<p class="note">
					※30万円を超えるお支払いはできません。<br />
					※コンビニ店頭でのお支払いには楽天Edyはご利用いただけません。現金でお支払いください。
					</p>
					<dl>
						<dd>
							<ol>
								<li>サークルＫサンクス Ｋステーションのメニュー画面にて「各種支払い」を選択してください。</li>
								<li>「6ケタの番号をお持ちの方」を選択してください。</li>
								<li>受付番号 を入力し、「次に進む」を選択してください。</li>
								<li>申込番号 を入力し、「次に進む」を選択してください。</li>
								<li>ご注意事項を確認のうえ、「次に進む」を選択してください。</li>
								<li>お支払い内容を確認のうえ、「次に進む」を選択してください。</li>
								<li>印刷された申込券をレジに渡し、30分以内に現金でお支払いください。</li>
								<li>お支払い後、領収書を必ずお受け取りください。</li>
							</ol>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		{/if}

		{if $CvsCode eq '10008'}
		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">セイコーマートでお支払いの場合</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>受付番号</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>申込番号</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>支払期限</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}年{$PaymentTermMonth|htmlspecialchars}月{$PaymentTermDay|htmlspecialchars}日
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					お支払いの前にお読みください
					<ul>
						<li>クラブステーションのあるセイコーマート全店でお支払いいただけます。</li>
						<li>お支払いの際、受付番号と申込番号が必要です。<br />メモを取るか、このページを印刷して、コンビニまでお持ちください。</li>
					</ul>
					<p class="note">
					※30万円を超えるお支払いはできません。<br />
					※コンビニ店頭でのお支払いには楽天Edyはご利用いただけません。現金でお支払いください。
					</p>
					<dl>
						<dd>
							<ol>
								<li>トップページより左下のボタン「インターネット受付　各種代金お支払い」を選択してください。</li>
								<li>受付番号 を入力し、「次のページ」ボタンを押してください。</li>
								<li>申込番号 を入力し、「次のページ」ボタンを押してください。</li>
								<li>お支払い内容を確認のうえ、「印刷」ボタンを押してください。</li>
								<li>印刷された申込券（3枚）をレジに渡し、現金でお支払いください。</li>
								<li>お支払い後、領収書を必ずお受け取りください。</li>
							</ol>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		{/if}

		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">Kanattaのサイトに戻る</span>
					</h2>
				</div>
			</div>
			<div class="bl_body information">

				<p class="alert">このページは再表示できません。</p>
				<p class="txt_recipt">
					お支払いに必要な番号のメモをお取りになるか、このページを印刷しましたか？</p>
				<form action="{$RetURL|htmlspecialchars}" method="post" onsubmit="return blockForm()">
					<p>{insert name="input_returnParams"}</p>
					<p class="control">
						<span class="submit">
							<input type="submit" value="Kanattaのサイトに戻る" />
						</span>
					</p>
				</form>
				<br class="clear" />
			</div>
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