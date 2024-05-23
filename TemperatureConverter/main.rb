#!/usr/bin/ruby
=begin
	author: Nguyen Minh Toan
	date: 23/05/2024
=end

def trans(opt, val)
	(opt == 'cTOf')? val*9/5 + 32 : (val - 32) * 5/9
end

if ARGV.length != 2
	puts "Read usage"
	exit(1)
end	
if ARGV[0] != 'cTOf' && ARGV[0] != 'fTOc'
	puts "Read usage"
	exit(1)
end
if ARGV[1] !~ /\A\d+(\.\d+)?\z/
	puts "Must be Number"
	exit(1)
end

puts trans(ARGV[0], ARGV[1].to_f)

