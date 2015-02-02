def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(numbers_array)
	sum = 0
	numbers_array.each { |x| sum += x }
	sum
end

def multiply(numbers)
	total = 1
	numbers.each { |x| total *= x}
	total
end

def factorial(num)
	multiply(1..(num))
end