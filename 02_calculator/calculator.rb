def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	sum = 0
	arr.each { |i| sum += i }
	sum
end

def multiply(*nums)
	product = 1
	nums.each { |i| product *= i }
	product
end

def power(num1, num2)
	num1 ** num2
end

def factorial(num)
		if num == 0
			1				
		else 
			num * factorial(num-1)
		end
end