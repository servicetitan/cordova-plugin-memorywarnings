var exec = require('cordova/exec');

function init() {
    exec(
        function(result) {
            console.log(result);
        },
        function(result) {
            console.warn(result);
        },
        "MemoryWarningsPlugin",
        "initialize", "");
};

module.exports = { 
    init: init,
    onMemoryWarning: function() {
        console.warn('Memory warning');
    }
};