$(function(){	
	// 툴팁
	var balloon = $('<div class="balloon"></div>').appendTo('body');
	
	function updateBalloonPostion(x,y){
		balloon.css({left : x+15, top : y});
	};
	
	$('.showBalloon').each(function(){
		var element = $(this);
		var text = element.attr('title');
		element.attr('title','');
		
		element.hover(
			function(event){
				balloon.text(text);
				updateBalloonPostion(event.pageX, event.pageY);
				balloon.show();
			},
			function(){
				balloon.hide();
			}
		);
		element.mousemove(function(event){
			updateBalloonPostion(event.pageX, event.pageY);
		});
	});

	// 2 Depth
	$('#menuTitle>ul>li.oneDepth1').each(function(){
		$(this).mouseenter(function(){
			$('#menuTitle>ul>li.oneDepth1>div>div>ul').stop(true, true).slideDown();
		}); 
	});
	$('#menuTitle>ul>li.oneDepth1').each(function(){
		$(this).mouseleave(function(){
			$('#menuTitle>ul>li.oneDepth1>div>div>ul').stop(false, false).slideUp();
		}); 
	});
	$('#menuTitle>ul>li.oneDepth2').each(function(){
		$(this).mouseenter(function(){
			$('#menuTitle>ul>li.oneDepth2>div>div>ul').stop(true, true).slideDown();
		}); 
	});
	$('#menuTitle>ul>li.oneDepth2').each(function(){
		$(this).mouseleave(function(){
			$('#menuTitle>ul>li.oneDepth2>div>div>ul').stop(false, false).slideUp();
		}); 
	});
	$('#menuTitle>ul>li.oneDepth3').each(function(){
		$(this).mouseenter(function(){
			$('#menuTitle>ul>li.oneDepth3>div>div>ul').stop(true, true).slideDown();
		}); 
	});
	$('#menuTitle>ul>li.oneDepth3').each(function(){
		$(this).mouseleave(function(){
			$('#menuTitle>ul>li.oneDepth3>div>div>ul').stop(false, false).slideUp();
		}); 
	});	
	$('#menuTitle>ul>li.oneDepth4').each(function(){
		$(this).mouseenter(function(){
			$('#menuTitle>ul>li.oneDepth4>div>div>ul').stop(true, true).slideDown();
		}); 
	});
	$('#menuTitle>ul>li.oneDepth4').each(function(){
		$(this).mouseleave(function(){
			$('#menuTitle>ul>li.oneDepth4>div>div>ul').stop(false, false).slideUp();
		}); 
	});
	$('#menuTitle>ul>li.oneDepth5').each(function(){
		$(this).mouseenter(function(){
			$('#menuTitle>ul>li.oneDepth5>div>div>ul').stop(true, true).slideDown();
		}); 
	});
	$('#menuTitle>ul>li.oneDepth5').each(function(){
		$(this).mouseleave(function(){
			$('#menuTitle>ul>li.oneDepth5>div>div>ul').stop(false, false).slideUp();
		}); 
	});
	// 가이드 텍스트
	$('.searchQuery').each(function(){
	var guideText = this.defaultValue;
	var element = $(this);
	
	element.focus(function(){
		if(element.val() === guideText) {
			element.val('');
			element.removeClass('gray');
		}
	});
	element.blur(function(){
		if(element.val() === "") {	
			element.val(guideText);	
			element.addClass('gray');
		}
	});
		if(element.val() === guideText) {
			element.addClass('gray');
		}
	});
	$('.searchTxtInput').each(function(){
	var guideText = this.defaultValue;
	var element = $(this);
	
	element.focus(function(){
		if(element.val() === guideText) {
			element.val('');
			element.removeClass('gray');
		}
	});
	element.blur(function(){
		if(element.val() === "") {	
			element.val(guideText);	
			element.addClass('gray');
		}
	});
		if(element.val() === guideText) {
			element.addClass('gray');
		}
	});
	$('#contentOpinion').each(function(){
	var guideText = this.defaultValue;
	var element = $(this);
	
	element.focus(function(){
		if(element.val() === guideText) {
			element.val('');
			element.removeClass('gray');
		}
	});
	element.blur(function(){
		if(element.val() === "") {	
			element.val(guideText);	
			element.addClass('gray');
		}
	});
		if(element.val() === guideText) {
			element.addClass('gray');
		}
	});
	
	// 푸터 SNS 로고
	// 롤오버
	$('.rollover').rollover();
	
	// 아이콘 hover
	var icons = $('#copyright>ul>li');
	icons.each(function(){
		var icon = $(this);
		icon.hover(
			function(){
				icon.css('background-color','#ffffff');
			},
			function(){
				icon.css('background-color','transparent');
			}
		);
	});
});