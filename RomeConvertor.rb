

VALUES = [
  ["M", 1000], 
  ["D", 500], 
  ["C", 100], 
  ["L", 50], 
  ["X", 10], 
  ["V", 5], 
  ["I", 1], 
]
class String 
  private
 
  def roman_mapping
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end
end

class RomeConverter

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
