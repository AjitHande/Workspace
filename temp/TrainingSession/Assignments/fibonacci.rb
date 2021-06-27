#Program to print Fibonacci series upto n terms

#--------------------------------------------------------------------

#1- without recursion

first = 0
second = 1

num = 0

print "Enter number of terms: "
n = gets.chomp.to_i

puts "Fibonacci series : "
i=1
while(i<=n+1)
	if(i<=1)
		num = i
	else
		p num
		num = first + second
		first = second
		second = num
	end
	i+=1
end

#--------------------------------------------------------------------

#2 - with recursion

def fibo(m)
	if(m<=2)
		return 1
	else
		return (fibo(m-1)+fibo(m-2))
	end
end

print "Enter number of terms: "
m = gets.chomp.to_i

puts "Fibonacci series : "
for i in 1..m
	p fibo(i)
end

#--------------------------------------------------------------------
