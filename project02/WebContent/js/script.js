$(function(){
	// 자바스크립트 팝업
	window.open("popup_js.html", "", "resizable = no, toolbar = no, menubar = no, location = no, directories = no, status = no,  scrollbars=no, width=510, height=700");
	
	// 번역
	$('.lang').find('ul').hide();
	
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
	
	// 최상단 배너 닫기
	$('.topClose').click(function(){
		$('#topBannerWrap').css('display','none');
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
	
	// 자주찾는 메뉴 열림
	var fBtn1 = $('#favoriteMenuWrap>#favoriteMenu>.favoriteMenuTitle>.favoriteBtn');
	var fBtn2 = $('#favoriteMenuWrap>#favoriteMenu>.favoriteMenuTitle>.favoriteBtn2');
	fBtn1.click(function(){
		$('#favoriteMenuWrap').animate({'height':'420px'},500);
		$('#favoriteMenuWrap>#favoriteMenu>ul').animate({'height':'400px'},500);
		fBtn1.animate({'top':'405px'}).css({'display':'none'});
		fBtn2.animate({'top':'405px'},500).css({'display':'block'});
	});
	// 자주찾는 메뉴 닫힘
	fBtn2.click(function(){
		$('#favoriteMenuWrap').animate({'height':'240px'},500);
		$('#favoriteMenuWrap>#favoriteMenu>ul').animate({'height':'240px'},500);
		fBtn2.css('display','none');	
		fBtn1.animate({'top':'225px'},500).css({'display':'block'});
	});
	
	// 자주찾는 메뉴 아이콘 효과
	// 코로나 19 현황
	var fIconCovidBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.covid');
	var fIconCovid = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.covid>div');
	fIconCovidBg.hover(
		function(){
			fIconCovidBg.css('background-color','#f02769');
			fIconCovid.css('background-position','-405px -48px');
			fIconCovid.stop(true, true).animate({'rotate': '360deg'}, 500);
		},
		function(){
			fIconCovidBg.css('background-color','#ffffff');
			fIconCovid.css('background-position','-405px -2px');
			fIconCovid.stop(false, false).animate({'rotate': '0deg'}, 500);
		}
	);
	// 청사안내
	var fIconBuildingBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.building');
	var fIconBuilding = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.building>div');
	fIconBuildingBg.hover(
		function(){
			fIconBuildingBg.css('background-color','#3da9fc');
			fIconBuilding.css('background-position','-3px -155px');
			fIconBuilding.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconBuildingBg.css('background-color','#ffffff');
			fIconBuilding.css('background-position','-3px -103px');
			fIconBuilding.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	// 부서안내
	var fIconBookBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.book');
	var fIconBook = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.book>div');
	fIconBookBg.hover(
		function(){
			fIconBookBg.css('background-color','#3da9fc');
			fIconBook.css('background-position','-47px -155px');
			fIconBook.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconBookBg.css('background-color','#ffffff');
			fIconBook.css('background-position','-47px -103px');
			fIconBook.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	// 찾아오시는 길
	var fIconMapBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.map');
	var fIconMap = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.map>div');
	fIconMapBg.hover(
		function(){
			fIconMapBg.css('background-color','#3da9fc');
			fIconMap.css('background-position','-339px -150px');
			fIconMap.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconMapBg.css('background-color','#ffffff');
			fIconMap.css('background-position','-339px -103px');
			fIconMap.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	// 행정복지센터
	var fIconCenterBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.center');
	var fIconCenter = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.center>div');
	fIconCenterBg.hover(
		function(){
			fIconCenterBg.css('background-color','#3da9fc');
			fIconCenter.css('background-position','-374px -151px');
			fIconCenter.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconCenterBg.css('background-color','#ffffff');
			fIconCenter.css('background-position','-374px -103px');
			fIconCenter.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	// 민원발급
	var fIconDocBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.doc');
	var fIconDoc = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.doc>div');
	fIconDocBg.hover(
		function(){
			fIconDocBg.css('background-color','#3da9fc');
			fIconDoc.css('background-position','-86px -155px');
			fIconDoc.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconDocBg.css('background-color','#ffffff');
			fIconDoc.css('background-position','-86px -103px');
			fIconDoc.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	// 가족관계등록
	var fIconFamBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.fam');
	var fIconFam = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.fam>div');
	fIconFamBg.hover(
		function(){
			fIconFamBg.css('background-color','#3da9fc');
			fIconFam.css('background-position','-131px -153px');
			fIconFam.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconFamBg.css('background-color','#ffffff');
			fIconFam.css('background-position','-131px -101px');
			fIconFam.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	// 세금(지방세)
	var fIconCalcBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.calc');
	var fIconCalc = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.calc>div');
	fIconCalcBg.hover(
		function(){
			fIconCalcBg.css('background-color','#3da9fc');
			fIconCalc.css('background-position','-165px -153px');
			fIconCalc.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconCalcBg.css('background-color','#ffffff');
			fIconCalc.css('background-position','-165px -101px');
			fIconCalc.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	// 주정차 과태료
	var fIconPenaltyBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.penalty');
	var fIconPenalty = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.penalty>div');
	fIconPenaltyBg.hover(
		function(){
			fIconPenaltyBg.css('background-color','#3da9fc');
			fIconPenalty.css('background-position','-210px -155px');
			fIconPenalty.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconPenaltyBg.css('background-color','#ffffff');
			fIconPenalty.css('background-position','-210px -103px');
			fIconPenalty.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	// 무인민원 발급기
	var fIconKioskBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.kiosk');
	var fIconKiosk = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.kiosk>div');
	fIconKioskBg.hover(
		function(){
			fIconKioskBg.css('background-color','#3da9fc');
			fIconKiosk.css('background-position','-255px -154px');
			fIconKiosk.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconKioskBg.css('background-color','#ffffff');
			fIconKiosk.css('background-position','-255px -102px');
			fIconKiosk.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	// 주정차 문자 알림
	var fIconCarSmsBg = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.carSms');
	var fIconCarSms = $('#favoriteMenuWrap>#favoriteMenu>ul>li>a.carSms>div');
	fIconCarSmsBg.hover(
		function(){
			fIconCarSmsBg.css('background-color','#3da9fc');
			fIconCarSms.css('background-position','-297px -156px');
			fIconCarSms.stop(true, true).animate({rotate: '360deg'}, 500);
		},
		function(){
			fIconCarSmsBg.css('background-color','#ffffff');
			fIconCarSms.css('background-position','-297px -104px');
			fIconCarSms.stop(false, false).animate({rotate: '0deg'}, 500);
		}
	);
	
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
	
	// 중간 탭메뉴
	var midTab = $('#tabTitle>ul>li');
	var midContent = $('#tabContent>div');
	var btnAct = $('#tabTitle>ul>li>button');
	midContent.hide().eq(0).show();
	btnAct.click(function(){
		btnAct.removeClass('active');
		midTab.addClass('active');
	});
	
	midTab.click(function(event){
		event.preventDefault();
		
		var tg = $(this);
		var i = tg.index();
		
		midTab.removeClass('active');
		tg.addClass('active');
		
		midContent.css('display','none');
		midContent.eq(i).css('display','block');
	});
 	var tabContent = $('#tabContent li');
	tabContent.each(function(){
		var content = $(this);
		content.hover(
			function(){
				content.stop(true,true).animate({'top':'-10px'},300);
			},
			function(){
				content.stop(false,false).animate({'top':'0px'},300);
			}
		);
	});
	
	// 하단 탭메뉴
	var botTab = $('#snsContentsTitle>ul>li');
	var botContent = $('#snsContents>div');
	botContent.hide().eq(0).show();
	
	botTab.click(function(event){
	event.preventDefault();
	
	var tg = $(this);
	var i = tg.index();
	
	botTab.removeClass('active');
	tg.addClass('active');
	
	botContent.css('display','none');
	botContent.eq(i).css('display','block');
	})
	var botTabContent = $('#snsContents>div>ul>li>div');
	botTabContent.each(function(){
		var content = $(this);
		content.hover(
			function(){
				content.stop(true,true).animate({'top':'-10px'},300);
			},
			function(){
				content.stop(false,false).animate({'top':'0px'},300);
			}
		);
	});
	
	// 사용자 지정함수 leftMove
	function leftMove(tg, start, end, op1, op2) {
		tg.css({left: start, opacity: op1}).stop().animate({'left': end, opacity: op2},1000);
	}
	
	// 사용자 지정함수 rightMove
	function rightMove(tg, start, end, op1, op2) {
		tg.css({right: start, opacity: op1}).stop().animate({'right': end, opacity: op2},1000);
	}

	// 슬라이드 배너 컨트롤 버튼
	var pageNum = $('.currentPage').text();
	
	// 이전
	$(".prev").on("click", function (e) {
		e.preventDefault();
		
		var imgOn = $(".imgBox").find(".on").index();
		var imgLen = $(".imgBox .img").length;
		
		$(".imgBox .img").eq(imgOn).removeClass("on");
		$(".imgBox .img").eq(imgOn).css({'opacity':'0'});
		
		imgOn = imgOn - 1;
		
		if( imgOn < 0 ){
			imgOn = 11;
			$(".imgBox .img").eq(imgOn).css("opacity", 1);
			$(".imgBox .img").eq(imgOn).addClass("on");
		} else {
			$(".imgBox .img").eq(imgOn).css("opacity", 1);
			$(".imgBox .img").eq(imgOn).addClass("on");
		}
		if( imgOn > 8 ) {
			pageNum = $('.currentPage').text(imgOn+1);
		} else {
			pageNum = $('.currentPage').text('0'+(imgOn+1));
		}
    });
	// 다음
    $(".next").on("click", function (e) {
		e.preventDefault();
		var imgOn = $(".imgBox").find(".on").index();
		var imgLen = $(".imgBox .img").length;
		
		$(".imgBox .img").eq(imgOn).removeClass("on");
		$(".imgBox .img").eq(imgOn).css("opacity", 0);
		
		imgOn = imgOn + 1;
		
		if( imgOn === imgLen ){
			$(".imgBox .img").eq(0).css("opacity", 1);
			$(".imgBox .img").eq(0).addClass("on");
			imgOn = 0;
		} else {
			$(".imgBox .img").eq(imgOn).css("opacity", 1);
			$(".imgBox .img").eq(imgOn).addClass("on");
		}
		if( imgOn > 8 ) {
			pageNum = $('.currentPage').text(imgOn+1);
		} else {
			pageNum = $('.currentPage').text('0'+(imgOn+1));
		}
    });
	
	// 메인 상단 왼쪽 슬라이드 배너
/*  	var leftBanner = $('#leftSlideBanner>.imgBox>.img');
	var leftBannerCurrent = 0;
	setInterval(function(){
		var prev = leftBanner.eq(leftBannerCurrent);
		leftMove(prev,'0%','-100%',1,0);
		leftBannerCurrent++;
		if(leftBannerCurrent == leftBanner.size()){leftBannerCurrent = 0;}
		var next = leftBanner.eq(leftBannerCurrent);
		leftMove(next,'100%','0%',0,1);
	},3000)  */
	
	// 메인 상단 오른쪽 슬라이드 배너
	var rightBanner = $('#photoNews>ul>li>a>div');
	var rightBannerCurrent = 0;
	setInterval(function(){
		var prev = rightBanner.eq(rightBannerCurrent);
		rightMove(prev,'0%','-100%',1,0);
		rightBannerCurrent++;
		if(rightBannerCurrent == rightBanner.size()){rightBannerCurrent = 0;}
		var next = rightBanner.eq(rightBannerCurrent);
		rightMove(next,'100%','0%',0,1);
	},3000)
	
	// 하단 유관기관 소식
	var interval = 2000;
	$('.rightNewsContent').each(function(){
		var container = $(this);
		
		function switchImg() {
			var anchor = container.find('a');
			
			var first = anchor.eq(0);
			var second = anchor.eq(1);
			first.fadeOut().appendTo(container);
			second.fadeIn();
		};
		setInterval(switchImg, interval);
	});	
	
	// 하단 안양 알림
	var topNews = $('#leftNewsSlide>ul>li.topNews>a');
	var topNewsCurrent = 0;
	setInterval(function(){
		var prev = topNews.eq(topNewsCurrent);
		leftMove(prev,'0%','-100%',1,0);
		topNewsCurrent++;
		if(topNewsCurrent == topNews.size()){topNewsCurrent = 0;}
		var next = topNews.eq(topNewsCurrent);
		leftMove(next,'100%','0%',0,1);
	},3000)
	var botNews = $('#leftNewsSlide>ul>li.botNews>a');
	var botNewsCurrent = 0;
	setInterval(function(){
		var prev = botNews.eq(botNewsCurrent);
		leftMove(prev,'0%','-100%',1,0);
		botNewsCurrent++;
		if(botNewsCurrent == botNews.size()){botNewsCurrent = 0;}
		var next = botNews.eq(botNewsCurrent);
		leftMove(next,'100%','0%',0,1);
	},3000)
	
	// 팝업	
	$('.pop button').click(function(){
		$('.pop').fadeOut();
	});
	
	// 하단 프로모션 컨텐츠
	var promoBox1 = $('.promoBox1');
	var promoBox2 = $('.promoBox2');
	var promoBox3 = $('.promoBox3');
	var promoBox4 = $('.promoBox4');
	var box1Content = promoBox1.find('.boxConImg');
	var box2Content = promoBox2.find('.boxConImg');
	var box3Content = promoBox3.find('.boxConImg');
	var box4Content = promoBox4.find('.boxConImg');
	var title1 = promoBox1.find('.promoTitle');
	var title2 = promoBox2.find('.promoTitle');
	var title3 = promoBox3.find('.promoTitle');
	var title4 = promoBox4.find('.promoTitle');
	
	// 박스 1
	promoBox1.hover(
		function(){
			promoBox1.css('overflow','visible');
			promoBox2.stop(true,true).animate({'marginLeft':'1035px'},500);
			promoBox3.stop(true,true).animate({'marginLeft':'1035px'},500);
			promoBox4.stop(true,true).animate({'marginLeft':'1035px'},500);
			box1Content.stop(true,true).animate({'opacity':'1'},500);
			
			title1.stop().animate({'height':'100px','line-height':'100px','font-size':'30px'},500);
		}, 
		function(){
			promoBox2.stop(false,false).animate({'marginLeft':'0px'},500);
			promoBox3.stop(false,false).animate({'marginLeft':'0px'},500);
			promoBox4.stop(false,false).animate({'marginLeft':'0px'},500);
			box1Content.stop(false,false).animate({'opacity':'0'},500);
			
			title1.stop(false,false).animate({'height':'38px','line-height':'38px','font-size':'18px'},500);
		}
	);
	// 박스 2
	promoBox2.hover(
		function(){
			promoBox2.css('overflow','visible');
			promoBox2.stop(true,true).animate({'left':'0px'},500);
			promoBox3.stop(true,true).animate({'marginLeft':'1035px'},500);
			promoBox4.stop(true,true).animate({'marginLeft':'1035px'},500);
			box2Content.stop(true,true).animate({'opacity':'1'},500);
			
			title2.stop(true,true).animate({'height':'100px','line-height':'100px','font-size':'30px'},500);
		}, 
		function(){
			promoBox2.stop(false,false).animate({'left':'345px'},500);
			promoBox3.stop(false,false).animate({'marginLeft':'0px'},500);
			promoBox4.stop(false,false).animate({'marginLeft':'0px'},500);
			box2Content.stop(false,false).animate({'opacity':'0'},500);
			
			title2.stop(false,false).animate({'height':'38px','line-height':'38px','font-size':'18px'},500);
		}
	);
	
	// 박스 3
	promoBox3.hover(
		function(){
			promoBox3.css('overflow','visible');
			promoBox2.stop(true,true).animate({'left':'0px'},500);
			promoBox3.stop(true,true).animate({'left':'0px'},500);
			promoBox4.stop(true,true).animate({'marginLeft':'1035px'},500);
			box3Content.stop(true,true).animate({'opacity':'1'},500);
			
			title3.stop(true,true).animate({'height':'100px','line-height':'100px','font-size':'30px'},500);
		}, 
		function(){
			promoBox2.stop(false,false).animate({'left':'345px'},500);
			promoBox3.stop(false,false).animate({'left':'690px'},500);
			promoBox4.stop(false,false).animate({'marginLeft':'0px'},500);
			box3Content.stop(false,false).animate({'opacity':'0'},500);
			
			title3.stop(false,false).animate({'height':'38px','line-height':'38px','font-size':'18px'},500);
		}
	);
	
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
	
	// 배너모음 확대 축소
	$('.fBtn').click(function(){
		$('#bannerCompWrap').stop(true, true).animate({'top':'95px'},500);
		$('.fBtn2').css({'display':'block'});
	});
	$('.fBtn2').click(function(){
		$('#bannerCompWrap').stop(true, true).animate({'top':'0px'},500);
		$('.fBtn2').css({'display':'none'});
	});
	
});