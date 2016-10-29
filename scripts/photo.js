$(document).ready(function(){
var COUNT = $('PORTFOLIO').children().length;

for (var $i=1; $i<=COUNT; $i++)
{
var IMG = new Image;
IMG.src = $('PORTFOLIO STUDENT:nth-child('+$i+') photo').attr('SRC');
$('PORTFOLIO STUDENT:nth-child('+$i+') photo').css('backgroundImage', 'URL('+$('PORTFOLIO STUDENT:nth-child('+$i+') photo').attr('SRC')+')');
$('PORTFOLIO STUDENT:nth-child('+$i+') photo').css('width', $('PORTFOLIO STUDENT:nth-child('+$i+') photo').attr('WIDTH'));
var HEIGHT = 0;
if ($('PORTFOLIO STUDENT:nth-child('+$i+') photo').is("[HEIGHT]")) 
{$('PORTFOLIO STUDENT:nth-child('+$i+') photo').css('height', $('PORTFOLIO STUDENT:nth-child('+$i+') photo').attr('HEIGHT'));}
else {
	if (IMG.width > IMG.height) {var otnos = IMG.width / IMG.height; HEIGHT=parseInt($('PORTFOLIO STUDENT:nth-child('+$i+') photo').attr('WIDTH'), 10)/otnos;}
	else {var otnos = IMG.height / IMG.width; HEIGHT=parseInt($('PORTFOLIO STUDENT:nth-child('+$i+') photo').attr('WIDTH'), 10)*otnos;}
	$('PORTFOLIO STUDENT:nth-child('+$i+') photo').css('height', HEIGHT);
}
}
});
