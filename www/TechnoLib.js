var argscheck = require('cordova/argscheck'),
channel = require('cordova/channel'),
exec = require('cordova/exec');

channel.createSticky('onCordovaInfoReady');
// Tell cordova channel to wait on the CordovaInfoReady event
channel.waitForInitialization('onCordovaInfoReady');


function successCallBack(){
	console.log('Technolib success.');
}

function failureCallBack(){
	console.log('Technolib failure.');
}

TechnoLib.technoAlert = function(title,message) {
	argscheck.checkArgs('fF', 'TechnoLib.technoAlert', arguments);
	exec(successCallback, errorCallback, "TechnoLib", "technoAlert", [title,message]);
};

TechnoLib.getUDID = function() {
	argscheck.checkArgs('fF', 'TechnoLib.getUDID', arguments);
	return exec(successCallback, errorCallback, "TechnoLib", "getUDID", []);
};


module.exports = TechnoLib;

