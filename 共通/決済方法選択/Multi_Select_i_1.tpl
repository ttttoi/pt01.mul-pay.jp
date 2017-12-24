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
	<title>���x�������@�I���y�[�W</title>

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
                <span class="hidden-sm hidden-xs">�v���W�F�N�g��</span>�T��
            </a>
            <a href="http://kanatta-lady.jp/select">
                <span class="img-icon-file-new"></span>
                <span class="hidden-sm hidden-xs">�v���W�F�N�g��</span>���
            </a>
			<span class="hidden-sm hidden-xs">
            <a href="http://kanatta-lady.jp/event">
                <span class="img-icon-flag"></span>�C�x���g
            </a>
            </span>
            <a href="http://kanatta-lady.jp/about">
                <span class="img-icon-question"></span>
                Kanatta�Ƃ�
            </a>
        </div>
<div class="icon-bar" href="http://kanatta-lady.jp/backed_projects/add/23/icon-bar" onclick="toggle_sub_menu();">
            <span class="el-icon-lines"></span>
        </div>
<div id="sub_menu">
            <div class="btn-pink">
                <a href="http://kanatta-lady.jp/projects">
                    <span class="el-icon-search"></span>
                    �v���W�F�N�g��T��
                </a>
            </div>
            <div class="btn-pink">
                <a href="http://kanatta-lady.jp/make">
                    <span class="el-icon-file-new"></span>
                    �����ō��
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
                  <span class="el-icon-comment-alt"></span> �悭���鎿��
              </a>
            </div>
            <div class="btn-pink">
              <a href="http://kanatta-lady.jp/contact">
                  <span class="el-icon-envelope"></span> ���₢���킹
              </a>
            </div>
        </div>
    </div>
<div class="wrapper select-wrap">
<div class="bodyinner">

	<!--�w�b�_�[�J�n-->
	<div class="header">
		<h1>{$ShopName|htmlspecialchars }�x�����@�I��</h1>
	</div>

	<div class="flow">
		<ul>
			<li class="active">
				<a href="{$CancelURL|htmlspecialchars}">
					<span>�}�C�y�[�W</span>
				</a>
			</li>
			<li class="current">
				<span>���x�����@�̑I��</span>
			</li>
			<li>
				<span>�K�v�������L��</span>
			</li>
			{if $Confirm eq '1'}
			<li>
				<span>�m�F���Ď葱��</span>
			</li>
			{/if}
			<li>
				<span>���x���葱������</span>
			</li>
		</ul>
	</div>

	<div class="main">

		<p class="txt">���x�����@��I�����������A���i�݂��������B</p>

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
							<span class="p">�����p���e</span>
						</h2>
					</div>
				</div>

				<div class="bl_body">

					<div>
						<table id="cartinfo" class="generic">
							<tr>
								<th>���^�[���z</th>
								<td>{$Amount|number_format|htmlspecialchars}�~</td>
							</tr>
							<tr>
								<th>�萔��</th>
								<td>{$Tax|number_format|htmlspecialchars}�~<span class="txt_margin">��kanatta�ł͈ꗥ216�~�萔����������܂�</span></td>
							</tr>
							<tr>
								<th>���x�����v</th>
								<td>{$Total|number_format|htmlspecialchars}�~</td>
							</tr>
						</table>
					</div>

				</div>

			</div>

			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">���x�����@�����I�т��������B</span>
						</h2>
					</div>
				</div>

				<div class="bl_body">

					<div class="paytypelist">
{*
						{insert name="radio_paymentType"}
-- *}
{* ++�x�����@�̑I�������J�X�^�}�C�Y�������ꍇ�́A��L��"radio_paymentType"�s���R�����g�A�E�g���A�ȉ��������p��������  *}
						<ul>
							<li>
								<input type="radio" name="PayType" value="credit" id="paytype_credit"/><label for="paytype_credit">�N���W�b�g�J�[�h</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="cvs" id="paytype_cvs"/><label for="paytype_cvs">�R���r�j�G���X�X�g�A</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="virtualaccount" id="paytype_virtualaccount"/><label for="paytype_virtualaccount">��s�U��</label>
								<span>����s�U���̏ꍇ�͕K�v�������L�������K�v�͂������܂���B</span>
							</li>
							<!--<li>
								<input type="radio" name="PayType" value="bitcoin" id="paytype_bitcoin"/><label for="paytype_bitcoin">�r�b�g�R�C��</label>
							</li>-->
{*
							<li>
								<input type="radio" name="PayType" value="edy" id="paytype_edy"/><label for="paytype_edy">�y�VEdy</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="suica" id="paytype_suica"/><label for="paytype_suica">���o�C��Suica</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="payeasy" id="paytype_payeasy"/><label for="paytype_payeasy">Pay-easy</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="paypal" id="paytype_paypal"/><label for="paytype_paypal">PayPal</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="netid" id="paytype_netid"/><label for="paytype_netid">�l�b�giD</label>
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
								<input type="radio" name="PayType" value="sb" id="paytype_sb"/><label for="paytype_sb">�\�t�g�o���N�܂Ƃ߂Ďx����(�a)</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="jibun" id="paytype_jibun"/><label for="paytype_jibun">���Ԃ��s</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="jcbPreca" id="paytype_jcbpreca"/><label for="paytype_jcbpreca">JCB PREMO</label>
							</li>
							<li>
								<fieldset>
									<legend><input type="radio" name="PayType" value="netcash" id="paytype_netcash"/><label for="paytype_netcash">NET CASH</label></legend>
									<div style="padding-left: 20px;"><input type="radio" name="netcash_paytype" value="NETCASH" id="netcash_paytype_netcash" /><label for="netcash_paytype_netcash">NET CASH</label></div>
									<div style="padding-left: 20px;"><input type="radio" name="netcash_paytype" value="NNCGIFT" id="netcash_paytype_nncgift" /><label for="netcash_paytype_nncgift">nanaco�M�t�g</label></div>
								</fieldset>
							</li>
							<li>
								<input type="radio" name="PayType" value="rakutenid" id="paytype_rakutenid"/><label for="paytype_rakutenid">�y�VID</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="linepay" id="paytype_linepay"/><label for="paytype_linepay">LINE Pay����</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="unionpay" id="paytype_unionpay"/><label for="paytype_unionpay">�l�b�g�������</label>
							</li>
							<li>
								<input type="radio" name="PayType" value="recruit" id="paytype_recruit"/><label for="paytype_recruit">���N���[�g���񂽂�x��������</label>
							</li>
*}
						</ul>

						<div class="wrap-submit">
							<p class="control">

							<span class="submit">
								<input type="submit" value="����" />
							</span>

							</p>
							<p class="back-btn"><a href="#" onclick="javascript:window.history.back(-1);return false;">�߂�</a></p>
						</div>

					</div>

				</div>

			</div>

			<br class="clear" />

		</form>
		<div class="about_payment">
    <h3>���ǂ݂�������</h3>
    <dl>
        <dt>�y���m�F�@�z</dt>
        <dd>Kanatta�͋N�Ď҂̔\�͂�v���W�F�N�g�̎��s��ۏ؂�����̂ł͂���܂���B
�v���W�F�N�g�̎��s�⃊�^�[���̔����i���s�j�Ȃǂ́A�S�ċN�Ď҂̐ӔC�̂��ƍs���܂��B</dd>
        <dt>�y���m�F�A�z</dt>
        <dt>All in�A�t�@���N���u</dt>
        <dd>�ڕW���B�Ɋւ�炸�A�v���W�F�N�g�x�����s�������_�Ŏx�����̌��ς��s���܂��B</dd>
        <dt>All or Nothing</dt>
        <dd>��W�I��������23:59�܂łɎx�����z���ڕW���z�ɒB���Ȃ��ꍇ�́A�v���W�F�N�g�s�����ƂȂ�x�����̌��ς͂���܂���B�܂��A���^�[���������i���s�j����܂���B</dd>
        <dt>�ySORRY�z</dt>
        <dd>Order from oversea is unavailable and in preparation now.</dd>
    </dl>
    <h3>�I�ׂ�4�̂��x�������@</h3>
    <dl>
        <dt>�N���W�b�g�J�[�h����</dt>
        <dd>�L���������c��100���ȏ�̃N���W�b�g�J�[�h�ł����p���������܂��B</dd>
        <dt>�R���r�j����</dt>
        <dd>�S���̎�v�ȃR���r�j�G���X�X�g�A�i�Z�u���C���u���������j�ł����p���������܂��B<br>�����p�́A�x�����z��30���~�ȉ��̏ꍇ�Ŏx����������W�I��������2���O��18���܂łɌ����܂��B</dd>
        <dt>��s�U��</dt>
        <dd>�S���̋��Z�@��ATM�܂��̓l�b�g�o���L���O�ɂĂ����p���������܂��B<br>�����p�́A�x�����z��90���~�ȉ��̏ꍇ�Ŏx����������W�I��������2���O��18���܂łɌ����܂��B</dd>
        <dt>�r�b�g�R�C������</dt>
        <dd>�������̃r�b�g�R�C���Ŏx�����̌��ς��\�ł��B<br>�r�b�g�R�C������肷��ɂ́A�r�b�g�R�C���̃E�H���b�g��p�ӂ���K�v������܂��B<br><a href="https://coincheck.com/ja/documents/about" target="_blank">�i�r�b�g�R�C���̊T�v�E������@�ɂ��āj</a></dd>
    </dl>
</div>

	</div>

</div>
</div>
{* �f�o�b�O���K�v�ȏꍇ�A�ȉ��̍s�� * ���폜���āA�R�����g���O���Ă��������B *}
{*insert name="debug_showAllVars"*}
<div class="footer-area">
	<img src="http://kanatta-lady.jp/img/common/footer-logo.png?1509083521" alt="">	<p class="foot_p01">
		<span class="foot_p01_s1">�` �����G���W�j�A�������<br>&nbsp;&nbsp;&nbsp;�����̂��߂̃N���E�h�t�@���f�B���O �`</span><br>
		���X�撣���Ă��鏗���̖��◝�z�����Ȃ���T�[�r�X
	</p>
</div>
<div id="footer">
    <div class="footer footer_pc footer-content">
   		<div class="foot_box clearfix">
    		<div id="fb-root"></div>
    		<div class="ftr_nav">
    			<div class="container clearfix">
    				<div class="ftr_nav_1 hidden-xs">
    					<p class="tit"><img src="http://kanatta-lady.jp/img/common/jewelry.png" alt="">�v���W�F�N�g��T��</p>
    					<ul class="txt10 footer-category">
    						<li><a href="http://kanatta-lady.jp/categories/12">�t�[�h</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/13">�R�~���j�e�B</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/19">�G���^��</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/21">�e�N�m���W�[</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/16">�t�@�b�V����</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/4">�r���[�e�B�[</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/20">�A�j��</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/7">�r�W�l�X</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/17">�v���_�N�g</a></li>
    					</ul>
    					<ul class="txt10 footer-category">
    						<li><a href="http://kanatta-lady.jp/categories/18">�p�t�H�[�}���X</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/15">�A�[�g</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/14">�X�|�[�c</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/9">�ʐ^�E�f��</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/10">�{�E�o��</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/11">���y</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/6">����E����</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/8">��</a></li>
    						<li><a href="http://kanatta-lady.jp/categories/5">�Љ�v��</a></li>
    					</ul>
    				</div>
    				<div class="ftr_nav_1">
    					<p class="tit"><img src="http://kanatta-lady.jp/img/common/jewelry.png">�v���W�F�N�g���n�߂�</p>
    					<ul class="txt10">
    						<li><a href="http://kanatta-lady.jp/make">�����ł���</a></li>
    						<li><a href="http://kanatta-lady.jp/consult">Kanatta�X�^�b�t�ɑ��k����</a></li>
    						<li><a href="http://kanatta-lady.jp/guideline">�K�C�h���C��</a></li>
							<li><a href="http://kanatta-lady.jp/event">�C�x���g</a></li>
    					</ul>
    				</div>
    				<div class="ftr_nav_1">
    					<p class="tit"><img src="http://kanatta-lady.jp/img/common/jewelry.png">Kanatta�ɂ���</p>
    					<ul class="txt10">
    						<li><a href="http://kanatta-lady.jp/about">Kanatta�Ƃ́H</a></li>
    						<li><a href="http://kanatta-lady.jp/question">�悭���鎿��</a></li>
    						<li><a href="http://kanatta-lady.jp/rule">���p�K��</a></li>
    						<li><a href="http://kanatta-lady.jp/policy">�v���C�o�V�[�|���V�[</a></li>
    						<li><a href="http://kanatta-lady.jp/tokutei">���菤����@</a></li>
    						<li><a href="http://air-works.jp/">��Џ��</a></li>
    						<li><a href="http://kanatta-lady.jp/contact">���₢���킹</a></li>
    					</ul>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
	<div class="footer-bottom">
        <div>
            &copy; 2017 �������AIR        </div>
	</div>
</div>
</body>
</html>