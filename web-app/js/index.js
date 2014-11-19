$(document).ready(function(){
	start();
});

function start(){
	$(".loginA").on('click',function(){
		$(this).addClass("select b-r");
		$(".loginB").removeClass("select b-l");
		$(".loginb").hide();
		$(".logina").slideDown("slow");
	});
	$(".loginB").on('click',function(){
		$(this).addClass("select b-l");
		$(".loginA").removeClass("select b-r");
		$(".logina").hide();
		$(".loginb").slideDown("slow");
	});
	$(".search").on('click',function(){
		var $obj = $(this);
		var data = $obj.attr("data");
		$(".search").removeClass("select b-t");
		$obj.addClass("select b-t");
		$(".tab-info").hide();
		$("."+data).slideDown("slow");
	});
	
}