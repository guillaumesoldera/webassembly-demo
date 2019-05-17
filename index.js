import Compute from './computeMax'

function calculateMax() {
    const start = new Date();
    const size = 10; //document.getElementById('size').value;
    const max = Compute.computeMax(size)
    const end = new Date();
    const maxLabel = document.createElement('label');
    maxLabel.textContent = max;
    document.body.appendChild(maxLabel);
    const timeLabel = document.createElement('time');
    //document.getElementById('max').textContent = max;
    timeLabel.textContent = "Time ellapsed : " + (end.getTime() - start.getTime()) + "ms";
    document.body.appendChild(document.createElement("br"));
    document.body.appendChild(timeLabel);
}


calculateMax();


module.exports = {
    calculateMax
}
