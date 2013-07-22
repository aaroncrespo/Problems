var palindrome = function(n) {
  return (n + '')== (n + '').split('').reverse().join('');
}