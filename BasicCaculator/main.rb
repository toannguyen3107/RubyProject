#!/usr/bin/ruby
=begin
	author: Nguyen Minh Toan
	date: 23/05/2024
=end
def expr(s)
	arr = s.scan(/\d+|[+\-\*\/]/).map {|x| x.match(/\d+/)? x.to_f : x}
	arr.inspect
	case arr[1]
		when '+'
			return arr[0] + arr[2]
		when '-'
			return arr[0] - arr[2]
		when '*'
			return arr[0] * arr[2]
		else
			return arr[0] / arr[2]  
	end
end
if ARGV.length != 3
	puts ARGV.length
	puts "Have problem!"
	exit(1)
end
puts expr("#{ARGV[0]}#{ARGV[1]}#{ARGV[2]}")
