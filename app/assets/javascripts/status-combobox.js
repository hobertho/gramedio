// JavaScript Document
// JavaScript Document
var status_arr = new Array("Dibatalkan", "Menunggu Pembayaran", "Terkirim");

function populateStatus(statusElementId){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var statusElement = document.getElementById(statusElementId);
	statusElement.length=0;
	//statusElement.options[0] = new Option('Pilih Status', '-1');
	
	for (var i=0; i<status_arr.length; i++) {
		statusElement.options[i] = new Option(status_arr[i],status_arr[i]);
	}
	statusElement.selectedIndex = 0;
	// Assigned all countries. Now assign event listener for the states.
} 
function changeSelected(status, statusElementId) {
	var statusElement = document.getElementById(statusElementId);
	var indexstatus = status_arr.indexOf(status);
	statusElement.selectedIndex = indexstatus;
}