function getReceipt() {
	// This initializes our string so it can get passed from  
	// function to function, growing line by line into a full receipt
	var text1 = " ";
	var runningTotal = 0;
	var sizeTotal = 0;
	var sizeArray = document.getElementsByClassName("size");
	for (var i = 0; i < sizeArray.length; i++) {
		if (sizeArray[i].checked) {
			var selectedSize = sizeArray[i].value;
			text1 = text1+selectedSize+"<br>";
		}
	}
	if (selectedSize === "Personal Pizza") {
		sizeTotal = 6;
	} else if (selectedSize === "Medium Pizza") {
		sizeTotal = 10;
	} else if (selectedSize === "Large Pizza") {
		sizeTotal = 14;
	} else if (selectedSize === "Extra Large Pizza") {
		sizeTotal = 16;
	}
	var text2 = sizeTotal.toString() + "<br>";
	runningTotal = sizeTotal;
	console.log(selectedSize+" = $"+sizeTotal+".00");
	console.log("size text1: "+text1);
	console.log("subtotal: $"+runningTotal+".00");
	document.getElementById("showText1").innerHTML=text1;
	document.getElementById("showText2").innerHTML=text2;
	getMeat(runningTotal,text1,text2); // All three of these variables will be passed on to each function
};

function getMeat(runningTotal,text1,text2) {
	var meatTotal = 0;
	var selectedMeat = [];
	var meatArray = document.getElementsByClassName("meats");
	for (var j = 0; j < meatArray.length; j++) {
		if (meatArray[j].checked) {
			selectedMeat.push(meatArray[j].value);
			console.log("selected meat item: ("+meatArray[j].value+")");
			text1 = text1+meatArray[j].value+"<br>";
		}
	}
	var meatCount = selectedMeat.length;
	if (meatCount > 1) {
		meatTotal = (meatCount - 1);
	} else {
		meatTotal = 0;
	}
	text2 = text2 + "0" + "<br>";  // first meat is free
	for (var i=0; i < meatTotal; i++) {
		text2 = text2 + "1" +"<br>";
	}
	
	runningTotal = (runningTotal + meatTotal);
	console.log("total selected meat items: "+meatCount);
	console.log(meatCount+" meat - 1 free meat = "+"$"+meatTotal+".00");
	console.log("meat text1: "+text1);
	console.log("Purchase Total: "+"$"+runningTotal+".00");
	document.getElementById("showText1").innerHTML=text1;
	document.getElementById("showText2").innerHTML=text2;
	document.getElementById("totalPrice2").innerHTML = "<h3><strong>$"+runningTotal+".00"+"</strong></h3>";
	getVeggie(runningTotal,text1,text2);  
};

function getVeggie(runningTotal,text1,text2) {
	var veggieTotal = 0;
	var selectedVeggie = [];
	var veggieArray = document.getElementsByClassName("veggies");
	for (var i=0; i < veggieArray.length; i++) {
		if (veggieArray[i].checked) {
			selectedVeggie.push(veggieArray.value);
			console.log("selected veggie item: ("+veggieArray[i].value+")");
			text1 = text1+veggieArray[i].value+"<br>";
		}
	}
	var veggieCount = selectedVeggie.length;
	if (veggieCount > 1) {
		veggieTotal = (veggieCount - 1);
	} else {
		veggieTotal = 0;
	}
	text2 = text2 + "0" + "<br>";  // first veggie is free
	for (var i=0; i < veggieTotal; i++) {
		text2 = text2 + "1" +"<br>";
	}
	runningTotal = (runningTotal + veggieTotal);
	console.log("total selected veggie items: "+veggieCount);
	console.log(veggieCount+" veggie - 1 free veggie = "+"$"+veggieTotal+".00");
	console.log("veggie text1: "+text1);
	console.log("Purchase Total: "+"$"+runningTotal+".00");
	document.getElementById("showText1").innerHTML=text1;
	document.getElementById("showText2").innerHTML=text2;
	document.getElementById("totalPrice2").innerHTML = "<h3><strong>$"+runningTotal+".00"+"</strong></h3>";
	getCrust(runningTotal,text1,text2);
};

function getCrust(runningTotal,text1,text2) {
	var crustTotal = 0;
	var crustArray = document.getElementsByClassName("crust");
	for (var i = 0; i < crustArray.length; i++) {
		if (crustArray[i].checked) {
			var selectedCrust = crustArray[i].value;
			text1 = text1+selectedCrust+"<br>";
		}
	}
	if (selectedCrust === "Cheese Stuffed Crust") {
		crustTotal = 3;
	}	else {
		crustTotal = 0;
	}
	text2 = text2 + crustTotal.toString() + "<br>";
	runningTotal = (runningTotal + crustTotal);
	document.getElementById("showText1").innerHTML=text1;
	document.getElementById("showText2").innerHTML=text2;
	document.getElementById("totalPrice2").innerHTML = "<h3><strong>$"+runningTotal+".00"+"</strong></h3>";
	getCheese(runningTotal,text1,text2);
}
function getCheese(runningTotal,text1,text2)  {
	var cheeseTotal = 0;
	var cheeseArray = document.getElementsByClassName("cheese");
	for (var i=0; i < cheeseArray.length; i++) {
		if (cheeseArray[i].checked)  {
			var selectedCheese = cheeseArray[i].value;
			text1 = text1+selectedCheese+"<br>";
		}
	}
	if (selectedCheese === "Extra Cheese") {
		cheeseTotal = 3;
	}	else {
		cheeseTotal = 0;
	}
	text2 = text2 + cheeseTotal.toString() + "<br>";
	
	
	runningTotal = (runningTotal + cheeseTotal);
	console.log(cheeseTotal+" CheeseTotal");
	document.getElementById("showText1").innerHTML=text1;
	document.getElementById("showText2").innerHTML=text2;
	document.getElementById("totalPrice2").innerHTML = "<h3><strong>$"+runningTotal+".00"+"</strong></h3>";
	getSauce(text1,text2);
}
function getSauce(text1,text2)  {
	var sauceArray = document.getElementsByClassName("sauce");
	for (var i=0; i < sauceArray.length; i++) {
		if (sauceArray[i].checked) {
			var selectedSauce = sauceArray[i].value;
			text1 = text1 + selectedSauce+"<br>";
		}
	}
	text2 = text2 + "0";
	receipt = document.getElementById("cart");
	receipt.style.opacity = 1;  //  Make final table visible
	document.getElementById("showText1").innerHTML=text1;
	document.getElementById("showText2").innerHTML=text2;
}
