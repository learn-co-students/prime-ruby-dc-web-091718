# Add  code here!
def prime?(int)
	if int < 0 #negative are primes if their postiive is prime
		int *= -1
	end
	limit = int / 2 #only need to check up to first half of int {really sqrt(int) but cant use Math lib}
	if limit == 1 # covers 2 and 3 case
		return true
	end

	if limit == 0 #covers 1, 0, -1 case
		return false
	end
	primes_to_check = get_primes(limit)

	primes_to_check.each do |prime|
		if int % prime == 0
			return false
		end
	end
	true
end


#returns array of all primes <= limit using sieve of eratosthenes
# algorithm from https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

def get_primes(limit)
	primes = []
	range = (2..limit).to_a
	index = 0
	p = range[index]
	if range.size == 1
		return range
	end
	
	while p <= limit && index < range.size - 1
		primes << p
		curr = p + p

		while curr <= limit
			#puts "removing #{curr}"
			range.delete(curr)
			curr += p
		end

		index += 1
		#puts "next prime is #{range[index]}"
		p = range[index]
	end
	primes
end

puts prime?(-1)