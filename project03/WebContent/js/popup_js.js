$(function(){
	$(':checkbox:checked').prop('checked',false);

	/* 1일동안 열지않기 - */
	var jsCookieCheck = false;
	$('.jsCookie>input').on('change',function(){
		if($(this).is(':checked')){
			jsCookieCheck = true;
			$.cookie('jsCookie','no',{expires:1});
			window.close();	
		}else{
			jsCookieCheck = false;
		}		
	});
	
	/* 닫기 버튼 */
	$('.closeBtn').click(function(e){
		if(jsCookieCheck){
			$.cookie('jsCookie','no',{expires:1});
		}			
		e.preventDefault();
		window.close();	
	});
});