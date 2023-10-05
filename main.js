$(document).ready(function () {
	$(".answer").hide();
	$("h4").click(function () {
		$(this).next("p").slideToggle(200);
	});
});



var imgSlide = new Array();
	imgSlide[0] = new Image();
	imgSlide[0].style.backgoundImage = "url(img/news1.png)";
	imgSlide[1] = new Image();
	imgSlide[1].style.backgoundImage = "url(img/news2.png)";
	imgSlide[2] = new Image();
	imgSlide[2].style.backgoundImage = "url(img/news3.png)";
	imgSlide[3] = new Image();
	imgSlide[3].style.backgoundImage = "url(img/news4.png)";
var i = 0;

function Slide() {
	var img = document.getElementById("slide");
	img.style.backgroundImage = imgSlide[i].style.backgoundImage;
	

	if (i < 3) {
		i++;
	} else {
		i = 0;
	}

	setTimeout("Fade()", 3000);
	setTimeout("Slide()", 4000);
}

function Fade() {
	var img = document.getElementById("slide");
	var imgStyle = img.style;

	imgStyle.transition = "visibility 0s 2s, opacity 2s linear"; /*LOOK AGAIN*/
}

Slide()

var slide = document.getElementById("carrousel");
var upArrow = document.getElementById("upArrow");
var downArrow = document.getElementById("downArrow");

let x = 0;

upArrow.onclick = function () {
	if (x > "-1500") {
		x = x - 500;
		carrousel.style.top = x + "px";
	}
	else {
		x = 0;
		carrousel.style.top = x + "px";
	}
}

downArrow.onclick = function () {
	if (x < 0) {
		x = x + 500;
		carrousel.style.top = x + "px";
	}
	else {
		x = -1500;
		carrousel.style.top = x + "px";
	}
}