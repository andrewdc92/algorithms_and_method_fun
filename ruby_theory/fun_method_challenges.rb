# given an array, return a new array with only the unique elements
## WITHOUT using uniq?

def is_unique(arr)
  unique = []
  arr.each do |el|
    unless arr.include?(el)
      unique << el
    end
  end
  unique
end

#define a method that receives two arrays as aguments and returns new array of unique
# arguments from both arrays, maintaining intra/inter array positioning

def unique_in_arrays(arr1, arr2)
  unique = []
  arr1 = arr1.uniq?
  arr2 = arr2.uniq?

  arr1.each do |el|
    if !arr2.include?(el)
      unique << el
    end
  end
  arr2.each do |el|
    if (!arr1.include?(el) && !unique.include?(el)
      unique << el
    end
  end
  unique
end


#define a method that accepts a string as an argument, and the method should return the
# slice of the word between the first and last vowels of that word
## IF word has less than two vowels, return empty string

def slice_between_vowels(string)
  vowels = 'aeiou'
  sliced = ''
  string.each_char.with_index do |ch, idx|
    if vowels.include?(ch)
      sliced << string[idx+1 .. last_vowel(string)]
      break
    end
  end
  sliced
end

def last_vowel(word)
  vowels = 'aeiou'
  last_index = nil
  word.each_char.with_index do |ch, idx|
    if vowels.include?(ch)
      last_index = idx -1
    end
  end
  last_index
end
