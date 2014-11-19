$(document).ready(function(){
	start();
});

function start(){
	$(".loginA").on('click',function(){
		$(this).addClass("select b-r");
		$(".loginB").removeClass("select b-l");
		$(".loginb").hide();
		$(".logina").fadeIn("slow");
	});
	$(".loginB").on('click',function(){
		$(this).addClass("select b-l");
		$(".loginA").removeClass("select b-r");
		$(".logina").hide();
		$(".loginb").fadeIn("slow");
	});
	$(".search").on('click',function(){
		var $obj = $(this);
		var data = $obj.attr("data");
		$(".search").removeClass("select b-t");
		$obj.addClass("select b-t");
		$(".tab-info").hide();
		$("."+data).fadeIn("slow");
	});
	$(".list").on("click",function(){
		var $obj = $(this);
		var data = $obj.attr("data");
		$(".list").removeClass("select");
		$obj.addClass("select");
		$(".i-list").hide();
		$("."+data).fadeIn();
	});
	
}