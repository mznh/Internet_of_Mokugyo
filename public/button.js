function poku(){
  var req_url = location.href+"api"
  var se = $('#mokugyo_sound');
  console.log( req_url);
  $.ajax({type:'GET',url:req_url,dataType:'json'});
  se[0].currentTime = 0;
  se[0].play();
  return false;
}

