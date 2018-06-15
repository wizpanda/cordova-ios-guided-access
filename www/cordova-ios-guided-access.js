var exec = require('cordova/exec');

var WPGuidedAccess = {
    start: function(success, error) {
        exec(success, error, 'WPGuidedAccessMode', 'start', []);
    },
    end: function(success, error) {
        exec(success, error, 'WPGuidedAccessMode', 'end', []);
    },
    isStarted: function(success, error) {
        exec(success, error, 'WPGuidedAccessMode', 'isEnabled', []);
    }
};

module.exports = WPGuidedAccess;