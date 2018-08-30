# Add  code here!
def prime?(number)
  if number <= 1
    return false
  else
    possible_factors = (2..(number-2/2))
    possible_factors.to_a.all? do |factor|
      number%factor != 0
    end
  end
end

