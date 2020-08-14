import Loading from "./lib/Loading";
import Cookie from "./lib/Cookie";
import MoveElement from "./lib/MoveElement"

function FullPage() {
	$('#pagepiling').pagepiling({
		menu: null,
		direction: 'vertical',
		verticalCentered: true,
		scrollingSpeed: 1000,
		delay: 300,
		easing: 'swing',
		loopBottom: false,
		loopTop: false,
		navigation: {
			'textColor': '#fff',
			'position': 'right',
			'tooltips': ['TRANG CHỦ', 'LĨNH VỰC KINH DOANH', 'TIN TỨC', 'ĐỐI TÁC', 'LIÊN HỆ']
		},
		normalScrollElements: null,
		normalScrollElementTouchThreshold: 5,
		touchSensitivity: 5,
		keyboardScrolling: true,
		sectionSelector: '.section',
		animateAnchor: false,

		//events
		onLeave: function(index, nextIndex, direction) {},
		afterLoad: function(anchorLink, index) {},
		afterRender: function() {},
	});
}

const toggleMenuMobile = () => {
	$(".toggle-menu.mobile").on("click", function() {
		$(this).toggleClass("active");
		$(this).siblings(".navbar-collapse").toggleClass("active");
		$("body").toggleClass("disabled");
	});
};

// Home banner
function homeBanner() {
	var swiperhomebanner = new Swiper('.home-banner', {
		loop: true,
		speed: 1500,
		autoplay: {
			delay: 3500,
			disableOnInteraction: false
		},
	});
}

function tabsDescription() {
	$('.tabs > li').on('click', function() {
		var $panel = $(this).closest('.tab-panels');
		$panel.find('li.active').removeClass('active');
		$(this).addClass('active');
		var panelToShow = $(this).attr('rel');
		$panel.find('.panel.active').slideUp(300, showNextPanel);

		function showNextPanel() {
			$(this).removeClass('active');
			$('#' + panelToShow).slideDown(300, function() {
				$(this).addClass('active');
			});
		};

	});

}

// Form search
function searchForm() {
	if ($(window).width() <= 992) {
		$('header').each(function() {
			$('.search').click(function() {
				$('.searchbox').slideToggle();
			})
		})
		$(window).scroll(function() {
			if ($(this).scrollTop() > 0) {
				$('.searchbox').slideUp();
			}
		});
	}
}


function listFilter() {
	$('span').click(function(j) {
		var dropDown = $(this).closest('.acc__card').find('.acc__panel');
		$(this).closest('.acc').find('.acc__panel').not(dropDown).slideUp();
		if ($(this).hasClass('active')) {
			$(this).removeClass('active');
			$('.acc__title').removeClass('active');
		} else {
			$('.acc__title').find('span.active').removeClass('active');
			$(this).addClass('active');
			$(this).closest('.acc__card').find('.acc__title').addClass('active');
		}
		dropDown.stop(false, true).slideToggle();
		j.preventDefault();
	});
	if ($(window).width() <= 1024)
		$('.block__title').find('.acc__mobile').on('click', function(e) {
			$('.content__sidebar').find('.acc').toggleClass('active');
			e.preventDefault();
		});
}

// Sub menu mobile
function subMenuMobile() {
	if ($(window).width() <= 1024) {
		$('.submenu-toggle').on('click', function(event) {
			var dropDown = $(this).closest('.nav-item').find('.nav-item__dropdownmenu');
			$(this).closest('.nav-item').find('.nav-item__dropdownmenu').addClass('active');
			$(this).closest('.navbar-nav').find('.nav-item__dropdownmenu').not(dropDown).slideUp();
			if ($(this).hasClass('active')) {
				$(this).addClass('active');
			} else {
				$(this).closest('.navbar-nav').find('.submenu-toggle').removeClass('active');
				$(this).removeClass('active');
			}
			dropDown.stop(false, true).slideToggle();
			event.preventDefault();
		});
	}
}


function DataBG() {
	$('[data-bg]').each(function() {
		$(this).addClass('data-bg lazyload')
	})
}

function setBackground() {
	$("[setBackground]").each(function() {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function() {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
}


document.addEventListener('DOMContentLoaded', () => {
	// Loading();
	new WOW().init();
	homeBanner();
	toggleMenuMobile();
	tabsDescription();
	searchForm();
	searchForm();
	listFilter();
	subMenuMobile();
	DataBG();
	setBackground();
	FullPage();
});