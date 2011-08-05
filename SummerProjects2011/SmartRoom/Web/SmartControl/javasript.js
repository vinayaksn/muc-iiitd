window.onload(loaddata('1'));
function loaddata(page) {
 // get the form values
 $.ajax({
   type: "POST",
   url: "content.php",
   data: 'pagenum='+page,
   success: function(resp){
     // we have the response
	document.getElementById('content').innerHTML=resp;											  
   },
   error: function(e){
     alert('Error: ' + e);
   }
 });
}

function getdata(page,date1,date2) {
 // get the form values
 $.ajax({
   type: "POST",
   url: "log.php",
   data: "pagenum="+page+"&set=1&date1="+date1+"&date2="+date2,
   success: function(resp){
     // we have the response
	document.getElementById('log').innerHTML=resp;											  
   },
   error: function(e){
     alert('Error: ' + e);
   }
 });
}


function senddata(state1,state2,state3,p) {
	if(state1==true)
		state="1";
	else if(state2==true)
		state="0";
	else if(state3==true)
		state="2";
	else 
		state="2";
	
 // get the form values
 $.ajax({
   type: "POST",
   url: "client.php",
   data: "state="+state+"&apptime="+p,
   success: function(resp){
     // we have the response
	document.getElementById('status').innerHTML=resp;											  
   },
   error: function(e){
     alert('Error: ' + e);
   }
 });
}