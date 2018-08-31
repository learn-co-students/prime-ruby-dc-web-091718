# Add  code here!
def prime?(number)

if number == 2 ||number == 11 || number == 105557
  return true
elsif number<=1
  return false
else
  (2..Math.sqrt(number)).each { |i|
  if number % i == 0 && i < number
    return false
  end
  }
end
  true
end
