
var click = {} 

function simulateClick(node) {
    var md = document.createEvent('MouseEvents');
    md.initEvent('mousedown', true, false);
    node.dispatchEvent(md);
    var mu = document.createEvent('MouseEvents');
    mu.initEvent('mouseup', true, false);
    node.dispatchEvent(mu);
}

var claps = document.getElementsByClassName("clapButton--largePill");

var clapCount = 0
var clapper = setInterval(function() {
	if (clapCount < 50) {
		simulateClick(claps[0])
		clapCount++;
	}
	else {
		clearInterval(clapper)
	}
}, 10);
