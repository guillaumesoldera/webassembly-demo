function maxInArray(array) {
    let max = -1.0;
    for (let i=0; i< array.length; i++) {
        const current = array[i];
        if (current > max) {
            max = current;
        }
    }
    return max;
}