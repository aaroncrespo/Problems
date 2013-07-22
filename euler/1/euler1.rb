# inefficient
((1..1000).to_a.reject!{|i| i % 5 != 0 && i % 3 != 0}).inject(&:+)

#faster
begin
  numbers ||= {}
  i ||= 1
  three = i * 3
  five = i * 5
  numbers[three] = true if three <= 1000
  numbers[five] = true if five <= 1000
  i += 1
end while three <= 1000 || five <= 1000

numbers.keys.inject(&:+)

