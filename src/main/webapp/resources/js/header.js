$(function(){
	$(".header-category li").hover(function(){
		$('ul:first',this).show();
	}, function(){
		$('ul:first',this).hide();
	});
	/*$(".header-category>li:has(ul)>a").each( function() {
		$(this).html( $(this).html()+' &or;' );
	});*/
});