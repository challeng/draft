$( document ).ready(function() {


	function cap(str)
	{
	    return string.charAt(0).toUpperCase() + string.slice(1);
	}


    $(".name").click(function() {

    	$(".name_desc").hide();

    	$(this).addClass("clicked");


		$(".clicked .name_desc").show().css("z-index", "9998");

		$(".clicked").click(function() {
			$(".clicked").removeClass("clicked");
			$(".name_desc").hide();
		});


	});

	$(".name_desc img").drags();

	$( ".draft_pick" ).hover(
	  function() {
	    $(".name_desc img").css("opacity",".5");
	  }, function() {
	    $(".name_desc img").css("opacity","1");
	  }
	);

});

// COYIER DRAGGABLE

	(function($) {
	    $.fn.drags = function(opt) {

	        opt = $.extend({handle:"",cursor:"move"}, opt);

	        if(opt.handle === "") {
	            var $el = this;
	        } else {
	            var $el = this.find(opt.handle);
	        }

	        return $el.css('cursor', opt.cursor).on("mousedown", function(e) {
	            if(opt.handle === "") {
	                var $drag = $(this).addClass('draggable');
	            } else {
	                var $drag = $(this).addClass('active-handle').parent().addClass('draggable');
	            }
	            var z_idx = $drag.css('z-index'),
	                drg_h = $drag.outerHeight(),
	                drg_w = $drag.outerWidth(),
	                pos_y = $drag.offset().top + drg_h - e.pageY,
	                pos_x = $drag.offset().left + drg_w - e.pageX;
	            $drag.css('z-index', 1000).parents().on("mousemove", function(e) {
	                $('.draggable').offset({
	                    top:e.pageY + pos_y - drg_h,
	                    left:e.pageX + pos_x - drg_w
	                }).on("mouseup", function() {
	                    $(this).removeClass('draggable').css('z-index', z_idx);
	                });
	            });
	            e.preventDefault(); // disable selection
	        }).on("mouseup", function() {
	            if(opt.handle === "") {
	                $(this).removeClass('draggable');
	            } else {
	                $(this).removeClass('active-handle').parent().removeClass('draggable');
	            }
	        });

	    }
	})(jQuery);
