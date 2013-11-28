fibonacci4kk = Enumerator.new do |caller|
    i1, i2 = 1, 1
    loop do
	if i1 >= 4000000
		break
	end
	caller.yield i1
        
	i1, i2 = i2, i1+i2
    end
end
total = 0
fibonacci4kk.each do |x|
	if x.even? then
		total += x
	end
end
p total
