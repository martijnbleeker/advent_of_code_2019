def fuel(mass)
  (mass / 3).floor - 2
end

def fuel_fuel(mass)
  result = fuel(mass)

  result < 0 ? 0 : result + fuel_fuel(result)
end

def process(arr)
  arr.map do |num|
    fuel_fuel(num)
  end.sum
end

def file(name)
  File.open(name).map(&:to_i)
end

puts "Answer: #{process(file("input1.txt"))}"
