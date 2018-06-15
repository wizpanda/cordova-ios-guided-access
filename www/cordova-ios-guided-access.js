var exec = require('cordova/exec');

var WPGuidedAccessMode = {
    start: function(success, error) {
        exec(success, error, 'WPGuidedAccessMode', 'start', []);
    }
};

module.exports = WPGuidedAccessMode;