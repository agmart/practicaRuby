require 'prime'

sum = 0

Prime.each { | n | 
    if n < 2000000
        sum += n
    else
        break
    end
}

p sum
