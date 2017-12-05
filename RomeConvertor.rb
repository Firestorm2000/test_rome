

VALUES = [
  ["M", 1000], 
  ["D", 500], 
  ["C", 100], 
  ["L", 50], 
  ["X", 10], 
  ["V", 5],
  ["IV", 4], 
  ["CM", 900 ],  
  ["CD", 400], 
  ["XC", 90],  
  ["I", 1], 
  ["XL", 40],
 ["IX", 9],
]
class RomeConvertor

def to_rome int_arg
	roman = ""

	  VALUES.each do |pair|
	    letter = pair[0]
	    value = pair[1]
	    roman += letter*(n / value)
	    n = n % value
	  end
	  return roman
end

def to_dec string_arg
	result = 0
	  str = self
	  roman_mapping.values.each do |roman|
    while str.start_with?(roman)
      result += roman_mapping.invert[roman]
      str = str.slice(roman.length, str.length)
    end
  end
  result
end

end
