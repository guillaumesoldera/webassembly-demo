import { max_from_array, maxValues } from './lib.rs';

function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
  }


function maxValuesInArray(nbValues) {
    //const values = new Int32Array(nbValues)
    const values = []
    var start = window.performance.now();
    console.log("Start filling array", start);
    //for (let i=0; i<values.length; i++) {
    for (let i=0; i<nbValues; i++) {
        //values[i] = getRandomInt(1000000);
        values.push(Math.random());
    }
    var tmp = window.performance.now();
    console.log("Array filled, start computing", tmp - start);

    const max = maxInArray(values);
    var end = window.performance.now();
    console.log("Computed done", end - tmp);
    console.log("Total time", end - start)
    return max;
}

function maxValuesFromWasm(nbValues) {
    return max_from_array(nbValues);
}

function maxInArray(array) {
    //const typedArray = new Float32Array(array.length)
//
    //// Populate the array with the values
    //for (let i=0; i<array.length; i++) {
    //    typedArray[i] = array[i]
    //}
    //
    //return max_from_array(array);
    let max = -1.0;
    for (let i=0; i< array.length; i++) {
        const current = array[i];
        if (current > max) {
            max = current;
        }
    }
    return max;
}

module.exports = {
    computeMax: maxValuesInArray
}