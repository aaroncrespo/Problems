# iterative:
numbers = [1,2]
while numbers.last <= 4000000
  numbers << numbers[-1] + numbers[-2] if numbers[-1] + numbers[-2] <= 4000000
end
numbers.inject(&:+)

