# iterative:
numbers = [0,1]
begin
  number = numbers[-1] + numbers[-2]
  numbers << number if number <= 4000000
end while number <= 4000000

numbers.inject(&:+)

