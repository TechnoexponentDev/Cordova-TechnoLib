var TechnoLib = function(){
	
};

function successCallBack(){
	console.log('Technolib success.');
}

function failureCallBack(){
	console.log('Technolib failure.');
}

TechnoLib.technoAlert = function(title,message) {
	alert(22);
	return cordova.exec(successCallback, errorCallback, "TechnoLib", "technoAlert", [title,message]);
};

TechnoLib.getUDID = function() {
	alert(23);
	return cordova.exec(successCallback, errorCallback, "TechnoLib", "getUDID", []);
};




module.exports = TechnoLib;
