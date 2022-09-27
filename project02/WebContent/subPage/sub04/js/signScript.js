$(function(){
	var checkIdVar = 'false';
	/* 아이디 체크 */
	if(checkIdVar=='true') {
		$('.form.id>.col2 input').val(currentCheckId);
		$('.form.id>.col2 input').attr('readonly', true);
		$('.form.id>.col2 input').css('background-color', '#cccccc');
		$('.idImage').css('background', 'url(images/login_id_icon.png) no-repeat -35px 0');
		document.memberForm.pass.focus();
	}else{
		document.memberForm.id.focus();
	}

	function checkInput()
	{	
		if (!document.memberForm.id.value.trim()){
			$('.idInfo').text('먼저 아이디 입력이 필요합니다.');
			document.memberForm.id.focus();
			return;
		}
		if (!document.memberForm.pass.value.trim()){
			$('.passwordInfo').text('필수 정보입니다.');
			$('.passImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat 0 0'); 
			document.memberForm.pass.focus();
			return;
		}
		/* 패스워드 정규식 */
		var passRegExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{4,15}$/;
		if(!passRegExp.test(document.memberForm.pass.value)){
			$('.passwordInfo').text('4~15자 영문, 숫자를 조합하세요.');
			$('.passImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat 0 0'); 
			document.memberForm.pass.focus();
			return;
		} 
		if (!document.memberForm.passConfirm.value.trim()){
			$('.passConfirmInfo').text('필수 정보입니다.');
			document.memberForm.passConfirm.focus();
			return;
		}
		if (!document.memberForm.name.value.trim()){
			$('.nameInfo').text('필수 정보입니다.');
			document.memberForm.name.focus();
			return;
		}
		if (!document.memberForm.email.value.trim()){
			$('.emailInfo').text('필수 정보입니다.');
			document.memberForm.email.focus();
			return;
		}
		/* 이메일 체크 정규식 */
		var emailRegExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
		if(!emailRegExp.test(document.memberForm.email.value)){
			$('.emailInfo').text('이메일 주소를 다시 확인해주세요.');
			document.memberForm.email.focus();
			return;
		}
		if (document.memberForm.pass.value.trim() != document.memberForm.passConfirm.value.trim())
		{
			$('.passConfirmInfo').text('비밀번호가 일치하지 않습니다.');
			$('.passConfirmImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat -43px 0');
			document.memberForm.passConfirm.focus();
			return;
		}
		$('*').css('cursor','wait');
		document.memberForm.submit();
	}

	function reset_form(){
		window.location.href='index.html';
		return;
	}

	function check_id(){
		window.location.href='index.html?id=' + document.memberForm.id.value;
		
	}	

	/* 모든 입력 */
	$('.form>.col2 input').not('.form.id>.col2 input').focus(function(){
		if(checkIdVar!='true'){
			if(!document.memberForm.id.value.trim()){
				$('.idInfo').text('먼저 아이디 입력이 필요합니다.');
			}
			document.memberForm.id.focus();
		}
	});

	$('.form>.col2 input').not('.form.id>.col2 input').blur(function(){
		if(checkIdVar=='true'){
			if(!this.value.trim()){
				$(this).parents('.form').find('.signupInfo').text('필수 정보입니다.');
				if($(this).parents('.form').hasClass('password')){
					$('.passImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat 0 0'); 	
					return;
				}
				if($(this).parents('.form').hasClass('passConfirm')){
					$('.passConfirmImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat -43px 0');
					return;
				}				
			}else if (this.value.trim()){
				if ($(this).parents('.form').hasClass('passConfirm')){
					if(document.memberForm.pass.value.trim() != document.memberForm.passConfirm.value.trim()){
						$('.passConfirmInfo').text('비밀번호가 일치하지 않습니다.');
						$('.passConfirmImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat -43px 0');
					} else if(document.memberForm.pass.value.trim() == document.memberForm.passConfirm.value.trim()){
						$('.passConfirmInfo').text('');
						$('.passConfirmImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat -130px 0');
					}else{
						$('.passConfirmInfo').text('');
						$('.passConfirmImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat -43px 0');
					}
					return;
				}
				if($(this).parents('.form').hasClass('password')){
					/* 패스워드 정규식 */
					var passRegExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{4,15}$/;
					if(!passRegExp.test(document.memberForm.pass.value)){
						$(this).parents('.form').find('.signupInfo').text('4~15자 영문, 숫자를 조합하세요.');
						$('.passImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat 0 0'); 
					} else{
						$(this).parents('.form').find('.signupInfo').text('');
						$('.passImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat -87px 0'); 
						return;
					}
				}
				if($(this).parents('.form').hasClass('email')){
					/* 이메일 체크 정규식 */
					var emailRegExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
					if(!emailRegExp.test(document.memberForm.email.value)){
						$(this).parents('.form').find('.signupInfo').text('이메일 주소를 다시 확인해주세요.');
					}else {
						$(this).parents('.form').find('.signupInfo').text('');
					}
					return;
				}
				if ($(this).parents('.form').hasClass('name')){
					$(this).parents('.form').find('.signupInfo').text('');
					return;
				}
			}
		}
	});
	
	/* 비밀번호 확인까지 정상적으로 입력한 뒤, 비밀번호를 수정했을 때 */
	$('.form.password>.col2 input').blur(function(){
		if((document.memberForm.pass.value.trim() != document.memberForm.passConfirm.value.trim()) || (!passRegExp.test(document.memberForm.passConfirm.value))) {
			$('.passConfirmInfo').text('비밀번호가 일치하지 않습니다.');
			$('.passConfirmImage').css('background', 'url(images/m_icon_pw_step.png) no-repeat 0 0');
			return;
		}
	});

	/* id 입력 */
	var id_reg_exp = /^[a-z0-9]{5,11}$/g; //아이디 체크 정규식
	var checkIdVar = 'false'
	$('.form.id>.col2 input').blur(function(e){
		e.preventDefault();
		if(checkIdVar=='true'){
			return;
		}else if (!id_reg_exp.test(document.memberForm.id.value) && document.memberForm.id.value.trim()){
			$('.idInfo').text('5~11자의 영문 소문자, 숫자만 사용 가능합니다.');
			document.memberForm.id.focus();			
		}
		else if (!document.memberForm.id.value.trim()){
			$('.idInfo').text('먼저 아이디 입력이 필요합니다.');
			document.memberForm.id.focus();
		} else {
			checkIdVar = 'true';
			$('.idInfo').addClass('color_blue').text('사용 가능한 아이디입니다.');
			$('.form.id>.col2 input').text(currentCheckId);
			$('.form.id>.col2 input').attr('readonly', true);
			$('.form.id>.col2 input').css('background-color', '#cccccc');
			$('.idImage').css('background', 'url(images/login_id_icon.png) no-repeat -35px 0');
			document.memberForm.pass.focus();
			return checkIdVar = 'true';
		}
		
	});

	/* 제출 및 취소 버튼 */
	$('.saveButton').click(function(e){
		e.preventDefault();
		checkInput();
	});
	$('.resetButton').click(function(e){
		e.preventDefault();
		reset_form();
	});
});