(function($) {
    var s,
        spanizeLetters = {
            settings: {
                letters: $('.js-spanize')
            },

            init: function() {
                s = this.settings;
                this.bindEvents();
            },
            bindEvents: function() {
                s.letters.html(function(i, el) {
                    //spanizeLetters.joinChars();
                    var spanizer = $.trim(el).split("");
                    return '<span>' + spanizer.join('</span><span>') + '</span>';
                });
            }
        };

    spanizeLetters.init();
})(jQuery);

/* svg */
jQuery('img.svg').each(function() {
    var $img = jQuery(this);
    var imgID = $img.attr('id');
    var imgClass = $img.attr('class');
    var imgURL = $img.attr('src');
    jQuery.get(imgURL, function(data) {

        // Get the SVG tag, ignore the rest
        var $svg = jQuery(data).find('svg');

        // Add replaced image's ID to the new SVG
        if (typeof imgID !== 'undefined') {
            $svg = $svg.attr('id', imgID);
        }
        // Add replaced image's classes to the new SVG
        if (typeof imgClass !== 'undefined') {
            $svg = $svg.attr('class', imgClass + ' replaced-svg');
        }

        // Remove any invalid XML tags as per http://validator.w3.org
        $svg = $svg.removeAttr('xmlns:a');

        // Replace image with new SVG
        $img.replaceWith($svg);

    }, 'xml');

});


/* youtube player */
/*
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var idAry = [], urlAry = [], objAry = [];

$('.youtube').each(function(i){
	$(this).attr('id', 'player'+i);
	idAry.push('player'+i);
	urlAry.push($(this).data('url'));
});

function onYouTubeIframeAPIReady(){
	for (var i=0; i< $('.youtube').length; i++){
		var player;
		var playerId = idAry[i];
		player = new YT.Player(playerId,{
			videoId: urlAry[i],
			playerVars:{
				'controls': 1, //�÷��̾� ����ѷ� ǥ�ÿ���
				'rel': 0, //���������� ǥ�ÿ���
				'playsinline': 1, //iosȯ�濡�� ��üȭ������ ������� �ʰ��ϴ� �ɼ�
				'autoplay': 0, 
				'loop':1,
				'mute':0,
				'showsearch':0,
				'modestbranding':0,
				'playlist': urlAry[i],
			}
		});
		
		objAry.push(player);
	}
}
*/
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var idAry = [],
    urlAry = [],
    objAry = [],
    player;

$('.youtube').each(function(i) {
    $(this).attr('id', 'player' + i);
    idAry.push('player' + i);
    urlAry.push($(this).data('url'));
});

function onYouTubeIframeAPIReady() {
    for (var i = 0; i < $('.youtube').length; i++) {
        var playerId = idAry[i];
        player = new YT.Player(playerId, {
            videoId: urlAry[i],
            playerVars: {
                'controls': 1,
                'rel': 0,
                'playsinline': 1,
                'autoplay': 0,
                'loop': 1,
                'mute': 0,
                'showsearch': 0,
                'modestbranding': 0,
                'playlist': urlAry[i],
                'vq': 'hd1080',
            }
        });

        objAry.push(player);
    }
}

$(window).on("load resize", function() {

    $("#main .video .movbox").each(function() {
        var $list = $(this);
        var idx = $(this).index;
        var $btn = $list.find('.icon');
        var $iframe = $list.find('iframe');
        $btn.on("click", function(e) {
            e.preventDefault();
            $iframe.show();
            $list.find(".imgbox").hide();
            $list.find(".icon").hide();
            var videoNum = $(this).prev().data("num")
            objAry[videoNum].playVideo();
        });
    });
    $("#main .video .movbox").each(function() {
        var $list = $(this);
        var idx = $(this).index;
        var $btn = $list.find('.icon');
        $btn.on("click", function(e) {
            e.preventDefault();
            $list.find(".imgbox").hide();
            $list.find(".icon").hide();
        });
    });
})


//globalNetwork
$(function() {
    var languageMap = {
        'kr': 'kr',
        'en': 'en',
        'ch': 'ch',
        'jp': 'jp',
        'vt': 'vt'
    };
    var folderPath = location.pathname.replace(/^\//, '').split('/')[0];
    console.log('folder:', folderPath);
    var language = languageMap[folderPath] || 'default';

    var map = $(".map-box"),
        tooltip = $(".tooltip"),
        tooltipW = tooltip.width();
    $(window).on("load resize", function() {
        if ($(window).width() > 1024) {
            $(document).on("mouseenter mousemove", ".pin", function(e) {
                var type = e.type,
                    countryP = $(this).attr("id");
                var names = list.map(i => i.name),
                    listIndex = names.indexOf(countryP),
                    detail = list[listIndex];
                if (type == "mouseenter") {
                    $(".pin").attr("class", "pin");
                    tooltip.stop().fadeIn();
                    tooltip.css({
                        "top": $(this).find(".circle_cls").position().top + 25
                    })
                    tooltip.find("span").text(detail.name);
                    tooltip.find("p").text(detail.mail);
                } else if (type == "mousemove") {
                    var offset = map.offset(),
                        mouseX = e.pageX - offset.left;
                    if (mouseX < (map.width() / 2)) {
                        tooltip.css({
                            "left": $(this).find(".circle_cls").position().left + 30
                        })
                    } else {
                        tooltip.css({
                            "left": $(this).find(".circle_cls").position().left - tooltipW - 30
                        })
                    }
                }
            });
            $(".map-box").on("mouseleave", function() {
                tooltip.stop().fadeOut();
            })
        } else {
            $(".list-cont").empty();
            $(".pin").each(function() {
                $("<li></li>").appendTo(".list-cont");
            });
            $(".list-cont").find("li").each(function(index) {
                if (!$(this).children("*").length) {
                    if (index < list.length) {
                        var data = list[index];
                        $("<div><h6><img src='/img/sub/pin_icon.png' alt='icon' /><span></span></h6><p></p></div>").appendTo(this)
                        $(this).find("h6 span").text(data.name);
                        $(this).find("p").text(data.mail)
                    }
                    //$("<a href='/en/sub/support/contactUs.php'>INQUIRY</a>").appendTo(this)
                    $("<a href='/" + language + "/sub/support/contactUs.php'>INQUIRY</a>").appendTo(this);
                }
            })
        }
    })
})