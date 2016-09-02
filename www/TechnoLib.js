var TechnoLib = function () {
};

TechnoLib.technoAlert = function (title,message) {
	return cordova.exec( successCallBack, failureCallBack, 'TechnoLib', 'technoAlert', [title,message]);  
};

TechnoLib.getUDID = function () {    
	return cordova.exec( successCallBack, failureCallBack, 'TechnoLib', 'getUDID', []);  
};

function successCallBack(){
	console.log('Technolib success.');
}
function failureCallBack(){
	console.log('Technolib failure.');
}


module.exports = TechnoLib;
