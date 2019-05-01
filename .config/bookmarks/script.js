//back to top functions
window.onscroll = function() {scrollFunction()};
//if scroll show back to scroll
function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("backtotop").style.display = "block";
  } else {
    document.getElementById("backtotop").style.display = "none";
  }
}
//return to top
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

//register time
function startTime()
{
  var today=new Date();
  today.toLocaleString('fr-FR', { timeZone: 'Europe/Paris' });
  var d = today.getDate();
  var mo = today.getMonth();
  var y = today.getFullYear();
  var h = today.getHours();
  var m = today.getMinutes();
  d=checkTime(d);
  mo=checkTime(mo);
  m=checkTime(m);
  document.getElementById('clock').innerHTML=d+"/"+mo+"/"+y+"    "+h+":"+m;
  t=setTimeout('startTime()',60000);
}
// add a zero in front of numbers<10
function checkTime(i)
{
  if (i<10)
  {
    i="0" + i;
  }
  return i;
}
//load time script at window load
window.onload = () => {
  startTime();
}