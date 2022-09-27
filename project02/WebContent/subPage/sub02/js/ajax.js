jQuery(document).ready(function(){
	
	var menu = $('.menu');
	
	$.ajax({
		url:'data/data.xml',
		dataType:'xml',
		async : true,
		cache: false,
		success:function(xml){
			var contents = $(xml);
			contents.find('content').each(function(){
				
				var content = $(this);
				var title = content.find('title').html();
				var txt = content.find('text').html();
				
				var li = $('<li></li>');
				var a = $('<a href="#"></a>');
				var p = $('<p></p>');
				var spanQ = $('<span class="qIcon"></span>');
				var spanA = $('<span class="aIcon"></span>');
				
				var qnaTitle = a.html(title);
				var qnaTxt = p.html(txt);
				
				spanQ.addClass('qIcon');
				spanA.addClass('aIcon');
				a.append(spanQ);
				p.append(spanA);
				
				a.append(qnaTitle);
				p.append(qnaTxt);
				li.append(a);
				li.append(p);
				menu.append(li);
				
				a.click(function(){
					$(this).next("p").slideToggle(100);
					$(this).parent("li").siblings("li").children("p").slideUp(100);
					return false;
				});
			});
		}
	});
});