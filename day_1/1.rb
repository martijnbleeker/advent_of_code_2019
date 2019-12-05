def fuel(mass)
  (mass / 3).floor - 2
end

def process(arr)
  sum = 0

  arr.map do |num|
    fuel(num)
  end.sum
end

def file(name)
  File.open(name).map(&:to_i)
end

puts "Answer: #{process(file("input1.txt"))}"
