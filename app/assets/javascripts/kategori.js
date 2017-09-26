// JavaScript Document
var category_arr = new Array("agriculture", "architecture", "art", "biography & memoir", "business", "children's fiction", "children's non-fiction", "cooking, food & wine", "crafts & hobbies", "family & parenting", "fiction", "fun & games", "gardening", "health, mind, & body", "hitory", "home reference/how-to", "humor", "medical", "music", "performing arts", "pets", "philosophy", "photography", "reference", "religion", "self-help", "social science", "sports & recreation", "transportation", "travel");

function populateCategories(categoryElementId){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var categoryElement = document.getElementById(categoryElementId);
	categoryElement.length=0;
	categoryElement.options[0] = new Option('Pilih Kategori', '-1');
	
	for (var i=1; i<category_arr.length; i++) {
		categoryElement.options[i] = new Option(category_arr[i-1],category_arr[i-1]);
	}
	categoryElement.selectedIndex = 0;
	// Assigned all countries. Now assign event listener for the states.
} 
function changeSelected(category, categoryElementId) {
	var categoryElement = document.getElementById(categoryElementId);
	var indexCategory = category_arr.indexOf(category)+1;
	categoryElement.selectedIndex = indexCategory;
}