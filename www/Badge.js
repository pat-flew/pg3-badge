var exec = require('cordova/exec');

function BadgePlugin() {}

BadgePlugin.prototype.setBadgeNumber = function(badgeNumber) {
	exec(
		function(winParam) {}, 
		function(error) {}, 
		"Badge",
		"setBadge", 
		[badgeNumber]
	);
};

var badgePlugin = new BadgePlugin();
module.exports = badgePlugin;
