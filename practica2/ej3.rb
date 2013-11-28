gen = Enumerator.new do | call | 
    a = 999
    b = 999
    loop do
        i = b * a
        if a > b then
            a -= 1
            b = 999
        else
            b -= 1
        end
        if i.to_s == i.to_s.reverse then
                call.yield i
        end
        break if a <= 999/2
    end
   
end

puts gen.max
