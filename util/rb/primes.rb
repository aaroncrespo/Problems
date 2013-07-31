# it's useful for euler and other problems to have as many prime numbers as you can get
# require 'prime' would go against the spirit of this repo.

class Prime
  @@primes = [2,3,5,7]

  class << self
    attr_accessor :primes
  end

  def self.get(n)
    return @@primes[n] if @@primes.length >= n
    # pad out more @@primes
    # there is a way to do it iteratively.
    possible_primes = @@primes + (@@primes.last + 1..n**2).to_a
    sieve(possible_primes)
    return @@primes[n]
  end

  def is_prime?(p)
    # it exists
    return if p <= @@primes.last && @@primes.index(p)
    # it doesn't exist so make enough to cover the range of possible primes
    # TODO improve lookup
    return if get(Math.sqrt(p).floor + 1) then @@primes.index(p)
  end

  private
  def self.sieve(numbers)
    numbers.each do |possible_prime|
      # the cases to not delete are: if 2 % 2 and 13 % 2
      # this can be improved to not retest old tested primes.
      numbers.delete_if {|number| number != possible_prime && number % possible_prime == 0}
    end
    @@primes = numbers
  end
end