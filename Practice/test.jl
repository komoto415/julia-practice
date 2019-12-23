using Printf
using Statistics

open("random.txt", "w") do file
    write(file, "tEXTTT\n more teeeex")
end

open("random.txt") do file
    for line in eachline(file)
        println(line)
    end
end
