# WARMUP

def dec_remainder_two_floats(float1, float2)

  divided = float1/float2
    return  divided % 1
end

## returns decimal remainder of dividing two integers
def dec_remainder_two_ints(int1, int2)
  f_dividend = int1.to_f
  f_divisor = int2.to_f
  return dec_remainder_two_floats(f_dividend, f_divisor)
end

## returns integer remainder of two arguments without using modulo

def no_modulo(i_dividend, i_divisor)
  a = i_dividend / i_divisor
  b = a * i_divisor
  c = i_dividend - b
end

# write a method that returns an array of digits of non-negative ints in desc. order and as strings

def desc_order(int)
  int.to_s.char.sort.reverse
end

#HARD - recreate the offset/rotate array method! assume offset=1
def my_rotate(arr, offset = 1)
  arr.drop(offset % arr.length) + arr.take(offset % arr.length)
end


----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

ITERATIVES

#return the middle char of a string. return the middle two chars if the word is of even length

def middle_string(str)
  mid = str.length / 2
  if str.length.odd?
    return str.[mid]
  else
    return str[middle -1 ] + [str.middle]
  end
end

## counts number of vowels in a strings
def count_vowels(str)
  str.count("aeoui")
end


#calculates factorial of integer input
def factorial(int)
  (1..self).reduce(:*) || 1
end
#take the range 1 to self, then remove the first element (1) from it (i.e. that's what reduce
 # means in functional programming). Then remove the first element of what's left (2) and multiply (:*)
 # those together. Now remove the first element from what's left (3) and multiply that with the running total.
 # Keep going until there's nothing left (i.e. you've handled the entire range).

 #reverse all words with 5 or more letters in a string.

 def reverse_five(string)
   arr = string.split(' ')
   i = 0
   while i < string.length
     if arr[i].length >= 5
       arr[i] = arr[i].reverse
     else
       arr[i] = arr[i]
     end
     i +=1
   end
   arr.join(' ')
 end

 # write a method that returns a new array containing all the elements of original array in reverse order

 def my_reverse(arr)
   new_array = arr.reverse
   return new_array
 end

 # write a method that returns a sorted array of the factors of its arguments

 def factors(num)
   arr = (1..num).to_a
   factored_arr = []
   i = 0
  while i < arr.length
    if num % arr[i] == 0
      factored_arr = factored_arr + arr[i]
    end
    i +=1
  end
  factored_arr
end

# returns a sorted array of the prime factors of its argument

  #determine number of factors, store in an array
  #iterate through factors, test if each is prime
  #if not prime, delete
  #return array

  def prime_numbers(num)
    all_factors = factors(num)
    only_prime = []
    i = 0
    while i < all_factors.length
      if prime?(all_factors[i])
        only_prime += all_factors[i]
      end
      i += 1
    end
    only_prime
  end

  #returns number of prime factors of its arguments

  def num_of_prime_factors(num)
    all_factors = factors(num)
    only_prime = []
    i = 0
    while i < all_factors.length
      if prime?(all_factors[i])
        only_prime += all_factors[i]
      end
      i += 1
    end
  only_prime.length
end

## EXPERT
# return the one integer in the array that is even or odd while the rest of the integers are the opposite

def oddball(arr)
  is_even = []
  is_odd = []
  i = 0
  while i < arr.length
    if arr[i] % 2 = 0
      is_even += arr[i]
    else
        is_odd += arr[i]
    end
    i += 1
  end
  if is_even.length == 1
    return is_even[0]
  else
    return is_odd[0]
  end
end
