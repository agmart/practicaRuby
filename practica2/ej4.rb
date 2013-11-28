i = 20
loop do
    divisible = true
    (11..20).each { |value|
        if i % value != 0 then
            divisible = false     
        end
        }
        if divisible then
            puts i
            break
        end
        i += 20
end

