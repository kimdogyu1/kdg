
// opacity를 따로 줬던 이유 크롬에 맞추다가 익스플로러 호환 못한다는거 뒤는게 인지
$(document).ready(function(){
  $("#root").hover(function(){
    $(".donot").css("opacity", "100");
    $(".donot li").css("visibility", "visible");
  }, function(){
    $(".donot").css("opacity", "0");
    $(".donot li").css("visibility", "hidden");
  });
});

$(document).ready(function(){
  $("#root2").hover(function(){
    $(".donot2").css("opacity", "100");
    $(".donot2 li").css("visibility", "visible");

  }, function(){
    $(".donot2").css("opacity", "0");
    $(".donot2 li").css("visibility", "hidden");
  });
});

$(document).ready(function(){
  $("#root3").hover(function(){
    $(".donot3").css("opacity", "100");
    $(".donot3 li").css("visibility", "visible");

  }, function(){
    $(".donot3").css("opacity", "0");
    $(".donot3 li").css("visibility", "hidden");
  });
});

$(document).ready(function(){
  $("#root4").hover(function(){
    $(".donot4").css("opacity", "100");
    $(".donot4 li").css("visibility", "visible");
  }, function(){
    $(".donot4").css("opacity", "0");
    $(".donot4 li").css("visibility", "hidden");
  });
});

function counter(){
		var saledday = new Date("December 28,2019,09:00:00").getTime();
		setInterval(function(){
			var now = new Date();
			var period = saledday - now;
			var d = Math.floor(period / (1000 * 60 * 60 * 24));
			var h = Math.floor((period % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
			var m = Math.floor((period % (1000 * 60 * 60)) / (1000 * 60));
			var s = Math.floor((period % (1000 * 60)) / 1000);
			if(s < 10){  //10초이하일때 01, 02, 03 .... 앞에 0 추가
				s = '0'+s;
			}
			$('.content').html(d)
			$('.content2').html(h)
			$('.content3').html(m)
			$('.content4').html(s)

		}, 1000); //1초마다 표시 1분씩은 60000
	}
	counter();
