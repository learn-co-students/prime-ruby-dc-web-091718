

def prime?(number)
  if number < 2
    false
  else
    array = (2..number-1).to_a
    array.each do |i|
      x = number % i
      if x == 0
        return false
      end
    end
    return true
  end
end

  # number > 1 and
  # cant be formed by multiplying 2 smaller numbers
  # except for the number times 1
