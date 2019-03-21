// $(function() {
//
// 	// Vars.
// 		var	$window = $(window),
// 			$body = $('body'),
// 			$wrapper = $('#wrapper');
//
// 	// Breakpoints.
// 		skel.breakpoints({
// 			xlarge:	'(max-width: 1680px)',
// 			large:	'(max-width: 1280px)',
// 			medium:	'(max-width: 980px)',
// 			small:	'(max-width: 736px)',
// 			xsmall:	'(max-width: 480px)'
// 		});
//
// 	// Disable animations/transitions until everything's loaded.
// 		$body.addClass('is-loading');
//
// 		$window.on('load', function() {
// 			$body.removeClass('is-loading');
// 		});
//
// 	// Poptrox.
// 		$window.on('load', function() {
//
// 			$('.thumbnails').poptrox({
// 				onPopupClose: function() { $body.removeClass('is-covered'); },
// 				onPopupOpen: function() { $body.addClass('is-covered'); },
// 				baseZIndex: 10001,
// 				useBodyOverflow: false,
// 				usePopupEasyClose: true,
// 				overlayColor: '#000000',
// 				popupLoaderText: '',
// 				overlayOpacity: 0.75,
// 				fadeSpeed: 500,
// 				usePopupDefaultStyling: false,
// 				windowMargin: (skel.breakpoint('small').active ? 5 : 50)
// 			});
//
// 		});
//
// });

$(document).ready(function(){
  $("#root").hover(function(){
    $(".donot").css("opacity", "100");

  }, function(){
    $(".donot").css("opacity", "0");
  });
});

$(document).ready(function(){
  $("#root2").hover(function(){
    $(".donot2").css("opacity", "100");

  }, function(){
    $(".donot2").css("opacity", "0");
  });
});

$(document).ready(function(){
  $("#root3").hover(function(){
    $(".donot3").css("opacity", "100");

  }, function(){
    $(".donot3").css("opacity", "0");
  });
});

$(document).ready(function(){
  $("#root4").hover(function(){
    $(".donot4").css("opacity", "100");

  }, function(){
    $(".donot4").css("opacity", "0");
  });
});

function counter(){
		var saledday = new Date("april 7,2019,09:00:00").getTime();
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
