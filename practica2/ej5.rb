puts (1..100).inject(:+)**2 - (1..100).inject{ | sum, n | sum += n**2 }
