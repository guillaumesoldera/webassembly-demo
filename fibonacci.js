function fibo(n, sum=0, prev=1) {
    if (n < 1) return sum;
    return fibo(n-1, prev+sum, sum);
}
//function fibo(len) {
//    function recur(len, origLen, oldVal, newVal) {
//      return (len === origLen)
//        ? newVal
//        : recur(len + 1, origLen, newVal, oldVal + newVal);
//    }
//    
//    return recur(1, len, 0, 1);
//  }