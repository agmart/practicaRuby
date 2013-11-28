color = { "red" => 128, "green" => 128, "blue" => 255 }
puts "Color red: %d" %color["red"]
puts "Color green: %d" %color["green"]
puts "Color blue: %d" %color["blue"]
a = color['red'] + color["green"] * 256 + color["blue"] * 256**2
puts "Representacion entera (9A): %d" %a

