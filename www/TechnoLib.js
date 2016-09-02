var exec = require('cordova/exec');

function successCallBack(){
	console.log('Technolib success.');
}

function failureCallBack(){
	console.log('Technolib failure.');
}

exports.technoAlert = function(title,message) {
	exec(successCallback, errorCallback, "TechnoLib", "technoAlert", [title,message]);
};

exports.getUDID = function() {
	return exec(successCallback, errorCallback, "TechnoLib", "getUDID", []);
};




