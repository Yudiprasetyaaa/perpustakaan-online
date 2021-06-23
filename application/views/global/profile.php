<div class="row">
	<div class="col m 12">
		<h5>Profil Perpustakaan MTsN 22 Jakarta</h5>
	</div>
</div>

<div class="row">
	<div class="col m6">
		<div class="card-panel cyan darken-2 white-text">
			<h6><b>Visi</b></h6>
			<p>
			Terwujudnya lembaga pendidikan berstandar Nasional,unggul dan Islami.
			</p><br>
			<h6><b>Misi</b></h6>
				1. Melengkapi sarana prasarana pembelajaran sesuai dengan standar Nasional.<br>
				2. Menciptakan suasana kegiatan pembelajaran yang dinamis.<br>
				3. Menumbuh kembangkan suasana kekeluargaan yang harmonis.<br>
				4. Menerapkan budaya islami di lingkungan Madrasah.<br>
				5. Mengembangkan potensi peserta didik sesuai bakat dan minat.<br>
				6. Menumbuhkan semangat berkompetisi secara sportif.<br>
				7. Meningkatkan, menumbuhkan semangat berkompetisi dan kreatifitas melalui kegiatan ekstrakurikuler
		</div>
	</div>
    <div class="col m6">
        <div class="card-panel cyan darken-2 white-text">
            <h6><b>Tujuan Sekolah</b></h6><hr>
            <p>
			1. Memenuhi sarana dan prasarana yang berstandar Nasional<br>
			2. Menciptakan suasana kegiatan pembelajaran yang dinamis<br>
			3. Mengadakan kegiatan pembiasaan yang islami, seperti salam, tadarus, tahfiz, Shalat Duha, Shalat Ashar<br>
			4. Menciptakan suasana kekeluargaan, melalui kegiatan olah raga bersama<br>
			5. Mengembangkan Kreatifitas peserta didik sesuai bakat dan minat<br>
			6. Mengikut sertakan peserta didik dalam kompentisi lomba dan olympiade
            </p>
        </div>
    </div>
</div>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
max-width: 1000px;
position: relative;
margin: auto;
}

/* Caption text */
.text {
color: #f2f2f2;
font-size: 15px;
padding: 8px 12px;
position: absolute;
bottom: 8px;
width: 100%;
text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
color: #f2f2f2;
font-size: 12px;
padding: 8px 12px;
position: absolute;
top: 0;
}

/* The dots/bullets/indicators */
.dot {
height: 15px;
width: 15px;
margin: 0 2px;
background-color: #bbb;
border-radius: 50%;
display: inline-block;
transition: background-color 0.6s ease;
}

.active {
background-color: #717171;
}

/* Fading animation */
.fade {
-webkit-animation-name: fade;
-webkit-animation-duration: 1.5s;
animation-name: fade;
animation-duration: 1.5s;
}

@-webkit-keyframes fade {
from {opacity: .4}
to {opacity: 1}
}

@keyframes fade {
from {opacity: .4}
to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
.text {font-size: 11px}
}
</style>
</head>
<body>

<h2>Dokumentasi</h2>
<p>Kegiatan yang ada di Perpustakaan MTsN 22 Jakarta</p>

<div class="slideshow-container">

<div class="mySlides fade">
<div class="numbertext">1 / 5</div>
<img src="<?php echo base_url(); ?>assets2/img/perpus1.jpeg"style="width:100%">
</div>
<div class="mySlides fade">
<div class="numbertext">2 / 5</div>
<img src="<?php echo base_url(); ?>assets2/img/perpus 2.jpeg"style="width:100%">
</div>
<div class="mySlides fade">
<div class="numbertext">3 / 5</div>
<img src="<?php echo base_url(); ?>assets2/img/perpus 3.jpeg"style="width:100%">
</div>
<div class="mySlides fade">
<div class="numbertext">4 / 5</div>
<img src="<?php echo base_url(); ?>assets2/img/perpus 4.jpeg"style="width:100%">
</div>
<div class="mySlides fade">
<div class="numbertext">5 / 5</div>
<img src="<?php echo base_url(); ?>assets2/img/perpus 5.jpeg"style="width:100%">
</div>

</div>
<br>

<div style="text-align:center">
<span class="dot"></span>
<span class="dot"></span>
<span class="dot"></span>
<span class="dot"></span>
<span class="dot"></span>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
var i;
var slides = document.getElementsByClassName("mySlides");
var dots = document.getElementsByClassName("dot");
for (i = 0; i < slides.length; i++) {
slides[i].style.display = "none";
}
slideIndex++;
if (slideIndex > slides.length) {slideIndex = 3}
for (i = 0; i < dots.length; i++) {
dots[i].className = dots[i].className.replace(" active", "");
}
slides[slideIndex-1].style.display = "block";
dots[slideIndex-1].className += " active";
setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>

</body>
</html>