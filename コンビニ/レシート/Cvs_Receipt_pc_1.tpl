<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="content-type" content="text/html; charset=Shift_JIS" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-style-Type" content="text/html; charset=Shift_JIS" />
	<title>�R���r�j�G���X�X�g�A���σ��V�[�g���@Kanatta���σT�[�r�X</title>

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
		<h1>{$ShopName|htmlspecialchars } ���x���葱��</h1>
	</div>

	<div class="flow">
		<ul>
			<li>
				<span>�}�C�y�[�W</span>
			</li>
			{if $SelectURL ne null}
			<li>
				<span>���x�����@�̑I��</span>
			</li>
			{/if}
			<li>
				<span>�K�v�������L��</span>
			</li>
			{if $Confirm eq "1"}
			<li>
				<span>�m�F���Ď葱��</span>
			</li>
			{/if}
			<li class="current">
				<span>���x�����@�̂��ē�</span>
			</li>
		</ul>
	</div>

	<div class="main">
		<p class="txt_recipt">�R���r�j�G���X�X�g�A���x�����\�����݂��������܂����B���L�̎菇�ł��x�������������B</p>
		<p class="txt_recipt">���x�����̍ہA���̃y�[�W�ɋL�ڂ��ꂽ�ԍ����K�v�ɂȂ�܂��B��������邩�A���̃y�[�W��������Ă��������������B</p>

		{if $CvsCode ne '00007' && $CvsCode ne '10001' && $CvsCode ne '10002' && $CvsCode ne '10005' && $CvsCode ne '10003' && $CvsCode ne '10004' && $CvsCode ne '10008'}
		<div class="block">
			<div class="bl_title">
				<div class="bl_title_inner">
					<h2>
						<span class="p">���[�\���^�~�j�X�g�b�v�ł��x�����̏ꍇ</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>���q�l�ԍ�</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>�m�F�ԍ�</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>�x������</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					���x�����̑O�ɂ��ǂ݂�������
					<ul>
						<li>Loppi�̂��郍�[�\���A�܂��̓~�j�X�g�b�v�S�X�ł��x�������������܂��B<br />Loppi�Ő\�����𔭍s���Ă���30���ȓ��Ƀ��W�ł��x�������������B</li>
						<li>���x�����̍ہA���q�l�ԍ��Ɗm�F�ԍ����K�v�ł��B<br />��������邩�A���̃y�[�W��������āA�R���r�j�܂ł��������������B</li>
						<li>�戵���׌���̏����̎����ƂȂ�܂��̂ŁA���x������K�����󂯎�肭�������B</li>
					</ul>
					<p class="note">
					��30���~�𒴂��邨�x�����͂ł��܂���B<br />
					���R���r�j�X���ł̂��x�����ɂ͊y�VEdy�͂����p���������܂���B�����ł��x�������������B
					</p>
					<dl>
						<dd>
							<ol>
								<li>�g�b�v�y�[�W���u�e��T�[�r�X���j���[�v��I�����Ă��������B</li>
								<li>�ォ��4�Ԗ�  ���}�[�N�̃{�^���u�e�����E�������x����/�`�v��I�����Ă��������B</li>
								<li>�����āu�e�������x�����v��I�����Ă��������B</li>
								<li>�u�e�������x�����v�̃y�[�W�Łu�}���`�y�C�����g�T�[�r�X�v��I�����Ă��������B</li>
								<li>�T�[�r�X���e�����m�F��A��낵����΁u�͂��v��I�����Ă��������B</li>
								<li>���q�l�ԍ� ����͂��A�u���ցv��I�����Ă��������B</li>
								<li>�m�F�ԍ� ����͂��A�u���ցv��I�����Ă��������B</li>
								<li>�\���������e���m�F�̂����A�u�����v��I�����Ă��������B</li>
								<li>���x�������̒��ӎ��������m�F��A��낵����΁u�͂��v��I�����Ă��������B</li>
								<li>������ꂽ�\���������W�ɓn���A30���ȓ��Ɍ����ł��x�������������B</li>
								<li>���x������A�u�戵���׌���̏��v��K�����󂯎�肭�������B</li>
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
						<span class="p">�t�@�~���[�}�[�g�ł��x�����̏ꍇ</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>���q�l�ԍ�</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>�m�F�ԍ�</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>�x������</dt>
					<dd>
						{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					���x�����̑O�ɂ��ǂ݂�������
					<ul>
						<li>Fami�|�[�g�̂���t�@�~���[�}�[�g�S�X�ł��x�������������܂��B<br />Fami�|�[�g�Ő\�����𔭍s���Ă���30���ȓ��Ƀ��W�ł��x�������������B</li>
						<li>���x�����̍ہA���q�l�ԍ��Ɗm�F�ԍ����K�v�ł��B<br />��������邩�A���̃y�[�W��������āA�R���r�j�܂ł��������������B</li>
						<li>�戵���׌���̏����̎����ƂȂ�܂��̂ŁA���x������K�����󂯎�肭�������B</li>
					</ul>
					<p class="note">
					��30���~�𒴂��邨�x�����͂ł��܂���B<br />
					���R���r�j�X���ł̂��x�����ɂ͊y�VEdy�͂����p���������܂���B�����ł��x�������������B
					</p>
					<dl>
						<dd>
							<ol>
								<li>�g�b�v�y�[�W���u�R���r�j�ł��x�����v��I�����Ă��������B</li>
								<li>�u������x�����v�̃y�[�W�Łu�e��ԍ����������̕��͂�����v��I�����Ă��������B</li>
								<li>���q�l�ԍ� ����͂��A�uOK�v��I�����Ă��������B</li>
								<li>�m�F�ԍ� ����͂��A�uOK�v��I�����Ă��������B</li>
								<li>���x�������e���m�F�̂����A�u�m�F�v��I�����Ă��������B</li>
								<li>������ꂽ�\���������W�ɓn���A30���ȓ��Ɍ����ł��x�������������B</li>
								<li>���x������A�u�戵���׌���̏��v��K�����󂯎�肭�������B</li>
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
						<span class="p">�T�[�N���j�T���N�X�ł��x�����̏ꍇ</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>���q�l�ԍ�</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>�m�F�ԍ�</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>�x������</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					���x�����̑O�ɂ��ǂ݂�������
					<ul>
						<li>�j�X�e�[�V�����̂���T�[�N���j�T���N�X�S�X�ł��x�������������܂��B<br />�j�X�e�[�V�����Ő\�����𔭍s���Ă���30���ȓ��Ƀ��W�ł��x�������������B</li>
						<li>���x�����̍ہA���q�l�ԍ��Ɗm�F�ԍ����K�v�ł��B<br />��������邩�A���̃y�[�W��������āA�R���r�j�܂ł��������������B</li>
						<li>�戵���׌���̏����̎����ƂȂ�܂��̂ŁA���x������K�����󂯎�肭�������B</li>
					</ul>
					<p class="note">
					��30���~�𒴂��邨�x�����͂ł��܂���B<br />
					���R���r�j�X���ł̂��x�����ɂ͊y�VEdy�͂����p���������܂���B�����ł��x�������������B
					</p>
					<dl>
						<dd>
							<ol>
								<li>�g�b�v�y�[�W����ʒ��������́u�e��x�����v��I�����Ă��������B</li>
								<li>�u11�P�^���̔ԍ����������̕��v��I�����Ă��������B</li>
								<li>�u�e�������x�����i���x�����̑I���j�v�̃y�[�W�Łu�}���`�y�C�����g�T�[�r�X�v��I�����Ă��������B</li>
								<li>�T�[�r�X��t�����܂ł̗�����m�F�̂����A�u���ɐi�ށv��I�����Ă��������B</li>
								<li>���q�l�ԍ� ����͂��A�u���ɐi�ށv��I�����Ă��������B</li>
								<li>�m�F�ԍ� ����͂��A�u���ɐi�ށv��I�����Ă��������B</li>
								<li>���͏��ɊԈႢ���Ȃ������m�F�̂����A�u���ɐi�ށv��I�����Ă��������B</li>
								<li>���x�������e���m�F�̂����A�u���ɐi�ށv��I�����Ă��������B</li>
								<li>������ꂽ�\���������W�ɓn���A30���ȓ��Ɍ����ł��x�������������B</li>
								<li>���x������A�u�戵���׌���̏��v��K�����󂯎�肭�������B</li>
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
						<span class="p">�Z�C�R�[�}�[�g�ł��x�����̏ꍇ</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>�I�����C�����ϔԍ�</dt>
					<dd>{$CvsReceiptNo_Format|htmlspecialchars}</dd>
					<dt>�x������</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					���x�����̑O�ɂ��ǂ݂�������
					<ul>
						<li>�N���u�X�e�[�V�����̂���Z�C�R�[�}�[�g�S�X�ł��x�������������܂��B<br />�N���u�X�e�[�V�����Ő\�����𔭍s���Ă���30���ȓ��Ƀ��W�ł��x�������������B</li>
						<li>���x�����̍ہA�I�����C�����ϔԍ����K�v�ł��B<br />��������邩�A���̃y�[�W��������āA�R���r�j�܂ł��������������B</li>
						<li>�戵���׌���̏����̎����ƂȂ�܂��̂ŁA���x������K�����󂯎�肭�������B</li>
					</ul>
					<p class="note">
					��30���~�𒴂��邨�x�����͂ł��܂���B<br />
					���R���r�j�X���ł̂��x�����ɂ͊y�VEdy�͂����p���������܂���B�����ł��x�������������B
					</p>
					<dl>
						<dd>
							<ol>
								<li>�g�b�v�y�[�W��荶���̃{�^���u�C���^�[�l�b�g��t�@�e�������x�����v��I�����Ă��������B</li>
								<li>�u�I�����C�����ϔԍ��i11���j�v�̃n�C�t���������ē��͂��A�u���̃y�[�W�v��I�����Ă��������B</li>
								<li>���͏��ɊԈႢ���Ȃ������m�F�̂����A�u���̃y�[�W�v��I�����Ă��������B</li>
								<li>���x�������e���m�F�̂����A�u����v��I�����Ă��������B</li>
								<li>������ꂽ��t�[�����W�ɓn���A30���ȓ��Ɍ����ł��x�������������B</li>
								<li>���x������A�u�戵���׌���̏��v��K�����󂯎�肭�������B</li>
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
						<span class="p">�f�C���[���}�U�L�^�X���[�G�t�ł��x�����̏ꍇ</span>
					</h2>
				</div>
			</div>
			<div class="bl_body information">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>�I�����C�����ϔԍ�</dt>
					<dd>{$CvsReceiptNo_Format|htmlspecialchars}</dd>
					<dt>�x������</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
					</dd>
				</dl>
				<div class="information">
				���x�����̑O�ɂ��ǂ݂�������
					<ul>
						<li>�u�I�����C�����ρv�ƓX���ɂ��`�����������B
							�f�C���[���}�U�L�Ɠ��n��̃��}�U�L�f�C���[�X�g�A�[�ł����x�������������܂��B
							���x�������@�̓f�C���[���}�U�L�Ɠ��l�ł��B</li>
						<li>���x�����̍ہA�I�����C�����ϔԍ����K�v�ł��B
							��������邩�A���̃y�[�W��������āA�R���r�j�܂ł��������������B</li>
						<li>�戵���׌���̏����̎����ƂȂ�܂��̂ŁA���x������K�����󂯎�肭�������B</li>
					</ul>
					<p class="note">
					��30���~�𒴂��邨�x�����͂ł��܂���B<br />
					���R���r�j�X���ł̂��x�����ɂ͊y�VEdy�͂����p���������܂���B�����ł��x�������������B
					</p>
					<ol>
						<li>�R���r�j�̃��W�X�^�b�t�ɁA��L�I�����C�����ϔԍ������񎦂��Ē����A�u�I�����C�����ρv��]�Ƃ��`�����������B</li>
						<li>�X�^�b�t�����W�𑀍��ɁA���͉�ʂ��\������܂��̂ŁA���q�l���I�����C�����ϔԍ��������͂��������B</li>
						<li>���x�������e���\������܂��̂ŁA���e�����������Ƃ����m�F�̂����A�u�m��v�������Ă��������B</li>
						<li>�����ŏ��i��������x�������������B</li>
						<li>�̎���(���V�[�g�`��)�����s����܂��̂ŁA�K�����󂯎�肭�������B</li>
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
						<span class="p">�Z�u���C���u���ł̂��x�������@</span>
					</h2>
				</div>
			</div>
			<div class="bl_body information">
				<div class="information">
					�����[�ԍ����������čŊ�̃Z�u���C���u���̃��W�ɂĂ��x�������������B
					<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
						<dt>�����[�ԍ�</dt>
						<dd>
							{$CvsReceiptNo|htmlspecialchars}
							{if $CvsReceiptUrl ne null}
							&nbsp;&nbsp;<a target="_blank" href="{$CvsReceiptUrl|htmlspecialchars}">[�����[�\��]</a>
							{/if}
						</dd>
						<dt>�x������</dt>
						<dd>
							{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
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
						<span class="p">���[�\���^�~�j�X�g�b�v�ł��x�����̏ꍇ</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>���q�l�ԍ�</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>�m�F�ԍ�</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>�x������</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					���x�����̑O�ɂ��ǂ݂�������
					<ul>
						<li>Loppi�̂��郍�[�\���A�܂��̓~�j�X�g�b�v�S�X�ł��x�������������܂��B<br />Loppi�Ő\�����𔭍s���Ă���30���ȓ��Ƀ��W�ł��x�������������B</li>
						<li>���x�����̍ہA���q�l�ԍ��Ɗm�F�ԍ����K�v�ł��B<br />��������邩�A���̃y�[�W��������āA�R���r�j�܂ł��������������B</li>
						<li>�戵���׌���̏����̎����ƂȂ�܂��̂ŁA���x������K�����󂯎�肭�������B</li>
					</ul>
					<p class="note">
					��30���~�𒴂��邨�x�����͂ł��܂���B<br />
					���R���r�j�X���ł̂��x�����ɂ͊y�VEdy�͂����p���������܂���B�����ł��x�������������B
					</p>
					<dl>
						<dd>
							<ol>
								<li>�g�b�v�y�[�W���u�e��ԍ����������̕��v��I�����Ă��������B</li>
								<li>���q�l�ԍ� ����͂��u���ցv��I�����Ă��������B</li>
								<li>�m�F�ԍ� ����͂��A�u���ցv��I�����Ă��������B</li>
								<li>�\���������e���m�F�̂����A�u�͂��v��I�����Ă��������B</li>
								<li>������ꂽ�\���������W�ɓn���A30���ȓ��Ɍ����ł��x�������������B</li>
								<li>���x������A�u�戵���׌���̏��v��K�����󂯎�肭�������B</li>
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
						<span class="p">�t�@�~���[�}�[�g�ł��x�����̏ꍇ</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>��P�ԍ��i��ƃR�[�h�j</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>��Q�ԍ��i�����ԍ��j</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>�x������</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					���x�����̑O�ɂ��ǂ݂�������
					<ul>
						<li>Fami�|�[�g�̂���t�@�~���[�}�[�g�S�X�ł��x�������������܂��B<br />Fami�|�[�g�Ő\�����𔭍s���Ă���30���ȓ��Ƀ��W�ł��x�������������B</li>
						<li>Fami�|�[�g�ł��x�����̏ꍇ<br />���x�����̍ہA���q�l�ԍ��Ɗm�F�ԍ����K�v�ł��B<br />��������邩�A���̃y�[�W��������āA�R���r�j�܂ł��������������B</li>
						<li>�o�[�R�[�h�ł̂��x�����̏ꍇ<br />���x�������@�ɋL�ڂ�URL����o�[�R�[�h���擾��A�R���r�j�̃��W�ɂ��񎦂��������B<br />�X�}�[�g�t�H���݂̂����p���������܂��B</li>
						<li>�戵���׌���̏����̎����ƂȂ�܂��̂ŁA���x������K�����󂯎�肭�������B</li>
					</ul>
					<p class="note">
					��30���~�𒴂��邨�x�����͂ł��܂���B<br />
					���R���r�j�X���ł̂��x�����ɂ͊y�VEdy�͂����p���������܂���B�����ł��x�������������B
					</p>
					<dl>
						<dd>
							<ol>
							<h2>
							<span class="p">Fami�|�[�g�ł̂��x�����̏ꍇ</span>
							</h2>
								<li>�g�b�v�y�[�W���u����x�����i�R���r�j�ł��x�����j�v��I�����Ă��������B</li>
								<li>�u������x�����v�̃y�[�W�Łu�e��ԍ����������̕��͂�����v��I�����Ă��������B</li>
								<li>�u�ԍ����͉�ʂɐi�ށv��I�����Ă��������B</li>
								<li>��P�ԍ��i��ƃR�[�h�j(5��) ����͂��A�uOK�v��I�����Ă��������B</li>
								<li>��Q�ԍ��i�����ԍ��j(12��) ����͂��A�uOK�v��I�����Ă��������B</li>
								<li>���x�������e���m�F�̂����A�u�m�F�v��I�����Ă��������B</li>
								<li>������ꂽ�\���������W�ɓn���A30���ȓ��ɂ��x�������������B</li>
								<li>���x������A�u�戵���׌���̏��v��K�����󂯎�肭�������B</li>
							</ol>
							<ol>
							<h2>
							<span class="p">�o�[�R�[�h�ł̂��x�����̏ꍇ</span>
							</h2>
								<li>�o�[�R�[�hURL�����Q�Ƃ��������B���x�����p�o�[�R�[�h���\������܂��B</li>
								<li>�o�[�R�[�h���R���r�j�̃��W�ɂĒ񎦂��A���x�������������B</li>
								<li>���x������A�u�戵���׌���̏��v��K�����󂯎�肭�������B<br />(�o�[�R�[�h��舵���s�̏ꍇ��Fami�|�[�g�ł��x�������������܂��B)</li>
							</ol>
							<br />
					<div class="warn">
						<p class="txt">���L����d�q�o�[�R�[�h���擾���邱�Ƃ��ł��܂��B</p>
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
						<span class="p">�T�[�N���j�T���N�X�ł��x�����̏ꍇ</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>��t�ԍ�</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>�\���ԍ�</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>�x������</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					���x�����̑O�ɂ��ǂ݂�������
					<ul>
						<li>�j�X�e�[�V�����̂���T�[�N���j�T���N�X�S�X�ł��x�������������܂��B<br />�j�X�e�[�V�����Ő\�����𔭍s���Ă���30���ȓ��Ƀ��W�ł��x�������������B</li>
						<li>���x�����̍ہA��t�ԍ��Ɛ\���ԍ����K�v�ł��B<br />��������邩�A���̃y�[�W��������āA�R���r�j�܂ł��������������B</li>
					</ul>
					<p class="note">
					��30���~�𒴂��邨�x�����͂ł��܂���B<br />
					���R���r�j�X���ł̂��x�����ɂ͊y�VEdy�͂����p���������܂���B�����ł��x�������������B
					</p>
					<dl>
						<dd>
							<ol>
								<li>�T�[�N���j�T���N�X �j�X�e�[�V�����̃��j���[��ʂɂāu�e��x�����v��I�����Ă��������B</li>
								<li>�u6�P�^�̔ԍ����������̕��v��I�����Ă��������B</li>
								<li>��t�ԍ� ����͂��A�u���ɐi�ށv��I�����Ă��������B</li>
								<li>�\���ԍ� ����͂��A�u���ɐi�ށv��I�����Ă��������B</li>
								<li>�����ӎ������m�F�̂����A�u���ɐi�ށv��I�����Ă��������B</li>
								<li>���x�������e���m�F�̂����A�u���ɐi�ށv��I�����Ă��������B</li>
								<li>������ꂽ�\���������W�ɓn���A30���ȓ��Ɍ����ł��x�������������B</li>
								<li>���x������A�̎�����K�����󂯎�肭�������B</li>
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
						<span class="p">�Z�C�R�[�}�[�g�ł��x�����̏ꍇ</span>
					</h2>
				</div>
			</div>
			<div class="bl_body">
				<dl class="allocated_numbers warn" id="cvs_l_f_numbers">
					<dt>��t�ԍ�</dt>
					<dd>{$CvsReceiptNo|htmlspecialchars}</dd>
					<dt>�\���ԍ�</dt>
					<dd>{$CvsConfNo|htmlspecialchars}</dd>
					<dt>�x������</dt>
					<dd>
							{$PaymentTermYear|htmlspecialchars}�N{$PaymentTermMonth|htmlspecialchars}��{$PaymentTermDay|htmlspecialchars}��
					</dd>
				</dl>
				<div class="information" id="cvs_l_f_info">
					���x�����̑O�ɂ��ǂ݂�������
					<ul>
						<li>�N���u�X�e�[�V�����̂���Z�C�R�[�}�[�g�S�X�ł��x�������������܂��B</li>
						<li>���x�����̍ہA��t�ԍ��Ɛ\���ԍ����K�v�ł��B<br />��������邩�A���̃y�[�W��������āA�R���r�j�܂ł��������������B</li>
					</ul>
					<p class="note">
					��30���~�𒴂��邨�x�����͂ł��܂���B<br />
					���R���r�j�X���ł̂��x�����ɂ͊y�VEdy�͂����p���������܂���B�����ł��x�������������B
					</p>
					<dl>
						<dd>
							<ol>
								<li>�g�b�v�y�[�W��荶���̃{�^���u�C���^�[�l�b�g��t�@�e�������x�����v��I�����Ă��������B</li>
								<li>��t�ԍ� ����͂��A�u���̃y�[�W�v�{�^���������Ă��������B</li>
								<li>�\���ԍ� ����͂��A�u���̃y�[�W�v�{�^���������Ă��������B</li>
								<li>���x�������e���m�F�̂����A�u����v�{�^���������Ă��������B</li>
								<li>������ꂽ�\�����i3���j�����W�ɓn���A�����ł��x�������������B</li>
								<li>���x������A�̎�����K�����󂯎�肭�������B</li>
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
						<span class="p">Kanatta�̃T�C�g�ɖ߂�</span>
					</h2>
				</div>
			</div>
			<div class="bl_body information">

				<p class="alert">���̃y�[�W�͍ĕ\���ł��܂���B</p>
				<p class="txt_recipt">
					���x�����ɕK�v�Ȕԍ��̃����������ɂȂ邩�A���̃y�[�W��������܂������H</p>
				<form action="{$RetURL|htmlspecialchars}" method="post" onsubmit="return blockForm()">
					<p>{insert name="input_returnParams"}</p>
					<p class="control">
						<span class="submit">
							<input type="submit" value="Kanatta�̃T�C�g�ɖ߂�" />
						</span>
					</p>
				</form>
				<br class="clear" />
			</div>
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