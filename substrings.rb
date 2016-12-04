#takes a word as the first argument and then an array of valid substrings (your dictionary) as the #second argument. It should return a hash listing each substring (case insensitive) that was found in #the original string and how many times it was found.

def substrings(input, array)
    input_array = input.split(" ")
    results = Hash.new(0)
    array.each do |substring|
        input_array.each do |word|
            if word.include? substring
                results[substring]+=1
            end
        end
    end
    return results
end

puts substrings("The fox ate the rabbit!",["bit", "fox", "t"]).to_s
    