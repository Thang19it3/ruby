
$(document).ready(function(){
	$('.menu-toggle').click(function(){
		$('.menu-toggle').toggleClass('active');
		$('nav').toggleClass('active');
	})
});
function toggle1()
{
	var trailer = document.querySelector(".trailer");
	var video = document.querySelector("iframe");
	trailer.classList.toggle("active");
	video.pause();
	video.currentTime =0;
}
function animateNumber(finalNumber, duration = 5000, startNumber = 0, callback) {
	let currentNumber = startNumber
	const interval = window.setInterval(updateNumber, 17)
	function updateNumber() {
	  if (currentNumber >= finalNumber) {
		clearInterval(interval)
	  } else {
		let inc = Math.ceil(finalNumber / (duration / 17))
		if (currentNumber + inc > finalNumber) {
		  currentNumber = finalNumber
		  clearInterval(interval)
		} else {
		  currentNumber += inc
		}
		callback(currentNumber)
	  }
	}
  }
  
  document.addEventListener('DOMContentLoaded', function () {
	animateNumber(200, 3000, 0, function (number) {
	  const formattedNumber = number.toLocaleString()
	  document.getElementById('thongso-2').innerText = formattedNumber
	})
	
	animateNumber(98, 3000, 0, function (number) {
	  const formattedNumber = number.toLocaleString()
	  document.getElementById('thongso-3').innerText = formattedNumber
	})
	
	animateNumber(700, 3000, 0, function (number) {
	  const formattedNumber = number.toLocaleString()
	  document.getElementById('thongso-4').innerText = formattedNumber
	})
	animateNumber(500, 3000, 0, function (number) {
	  const formattedNumber = number.toLocaleString()
	  document.getElementById('thongso-5').innerText = formattedNumber
	})
  })

  var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			if (n > slides.length) {slideIndex = 1}    
				if (n < 1) {slideIndex = slides.length}
					for (i = 0; i < slides.length; i++) {
						slides[i].style.display = "none";  
					}
					for (i = 0; i < dots.length; i++) {
						dots[i].className = dots[i].className.replace(" active", "");
					}
					slides[slideIndex-1].style.display = "block";  
					dots[slideIndex-1].className += " active";
				}


function openNav() {
  document.getElementById("mySidenav").style.width = "500px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
mybutton = document.getElementById("myBtn");

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}

const drop_btn = document.querySelector('.drops-btn');
		const menu_wrapper = document.querySelector('.wrapper');
		drop_btn.onclick = (()=>{
			menu_wrapper.classList.toggle("show");
		});