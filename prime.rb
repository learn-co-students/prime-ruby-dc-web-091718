def prime?(integer)
  test_factors = (2..integer)
  test_array = test_factors.to_a
  modulo_operators = []
  test_array.each do |i|
    modulo_operators.push(integer % i)
  end
  n = 0
  if integer < 2
    false
  elsif integer >= 2
      check_for_zeros = modulo_operators.sort
     if check_for_zeros[1] == 0
       false
     else
       true
     end
  end
end
