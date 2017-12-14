<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="content-type" content="text/html; charset=Shift_JIS" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-style-Type" content="text/html; charset=Shift_JIS" />
	<title>����J�[�h�m�F�@Kanatta���σT�[�r�X</title>

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
<div id="sub_menu" style="display: none;">
            <div>
                <a href="http://kanatta-lady.jp/projects">
                    <span class="el-icon-search"></span>
                    �T��
                </a>
            </div>
            <div>
                <a href="http://kanatta-lady.jp/make">
                    <span class="el-icon-file-new"></span>
                    ���
                </a>
            </div>
            <div>
                <a href="http://kanatta-lady.jp/about">
                    <span class="el-icon-question"></span>
                    Kanatta�Ƃ�
                </a>
            </div>
                    </div>
    </div>
<div class="wrapper">
<div class="bodyinner">

	<!--�w�b�_�[�J�n-->
	<div class="header">
		<h1>{$ShopName|htmlspecialchars } �o�^�J�[�h�̕ύX</h1>
	</div>

	<div class="flow">
		<ul>
			<li class="active">
				<a href="{$CancelURL|htmlspecialchars}">
					<span>�}�C�y�[�W</span>
				</a>
			</li>
			<li  class="active">
				<a href="{$EntryURL|htmlspecialchars}">
				<span>�K�v�������L��</span>
				</a>
			</li>
			<li class="current">
				<span>�m�F���Ď��s</span>
			</li>
			<li>
				<span>�J�[�h���̍X�V(�폜)����</span>
			</li>
		</ul>
	</div>

	<div class="main">

		<p class="txt">
			{if $JobCd eq 'SAVE' }
			�J�[�h��ۑ����܂��B��낵���ł����H
			{else}
			�J�[�h���폜���܂��B��낵���ł����H
			{/if}
		</p>

		<form action="{$ExecURL|htmlspecialchars}" onsubmit="return blockForm()" method="post">

			<p>{insert name="input_keyItems"}</p>

			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">���q�l���</span>
						</h2>
					</div>
				</div>

				<div class="bl_body">

					<table class="generic" summary="credit_1" id="credit">
						<tr>
							<th>���ID</th>
							<td>{$MemberID|htmlspecialchars}</td>
						</tr>
						<tr>
							<th>�����O</th>
							<td>{$MemberName|htmlspecialchars}�@�l</td>
						</tr>
					</table>
				</div>
			</div>

			{if $JobCd eq 'SAVE'}
			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">
								�V�����o�^����J�[�h
							</span>
						</h2>
					</div>
				</div>
				<div class="bl_body">

					<table class="generic" summary="credit_1" id="credit">
						<tr>
							<th>�J�[�h�ԍ�</th>
							<td>{$N_CardNo|htmlspecialchars}</td>
						</tr>
						<tr>
							<th>�L������(MM/YY)</th>
							<td>{$N_ExpireMonth|htmlspecialchars}/{$N_ExpireYear|htmlspecialchars}</td>
						</tr>
						<tr>
							<th class="td_bl2">�J�[�h���`�l</th>
							<td>{$N_HolderName|htmlspecialchars}</td>
						</tr>
					</table>
					<p class="control">
						<span class="submit">
							<input type="submit" value="�ۑ�����" />
						</span>
					</p>
				</div>
			</div>
			{/if}

			{if $CardNo ne null }
			<div class="block">
				<div class="bl_title">
					<div class="bl_title_inner">
						<h2>
							<span class="p">
								���ݓo�^����Ă���J�[�h
							</span>
						</h2>
					</div>
				</div>
				<div class="bl_body">
					<table class="generic" summary="credit_1" id="credit">
						<tr>
							<th class="td_lb2">�J�[�h�ԍ�</th>
							<td>{$CardNo|htmlspecialchars}</td>
						</tr>
						<tr>
							<th class="td_lb2">�L������(MM/YY)</th>
							<td>{$ExpireMonth|htmlspecialchars}/{$ExpireYear|htmlspecialchars}</td>
						</tr>
						<tr>
							<th class="td_lb2">�J�[�h���`�l</th>
							<td>{$HolderName|htmlspecialchars}</td>
						</tr>
					</table>
					{if $JobCd eq 'DELETE'}
					<p class="control">
						<span class="submit">
							<input type="submit" value="�폜����" />
						</span>
					</p>
					{/if}
				</div>
			</div>
			{/if}


			<br class="clear" />

		</form>
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