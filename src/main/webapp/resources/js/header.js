$(function(){
	$(".header-category li").hover(function(){
		$('ul:first',this).show();
	}, function(){
		$('ul:first',this).hide();
	});

	var main = $('.header-category>li');
	//메인 카테고리 링크 설정
	for(var i=0; i<main.length; i++){
		var str;
		if(mainCategory[i] != null){
			str = "/leather/product/list?product_maincategory="+mainCategory[i];
		}else{
			str = "/leather/product/list";
		}
		main.children('a').eq(i).attr('href',str); //a태그의 속성인 href에 str추가
	}
	
	//서브 카테고리 링크 설정
	for(var i=0; i<main.length; i++){
		var sub = main.eq(i).children('ul').children('li');
		for(var j=0; j<sub.length; j++){
			var str = "/leather/product/list?product_maincategory="+mainCategory[i]+"&product_subcategory="+subCategory[i][j];
			sub.eq(j).find('a').attr('href',str);
		}
	}
});
var mainCategory = ["001","002","003","004","005","006","007","008",null];
var subCategory 
	= [	["001","002","003","004"],
		["001","002","003","004"],
		["001","002","003","004","005"],
		["001","002","003"],
		["001","002"],
		["001"],
		[],
		[]];