def p_times
  statement= "hello"
  num = 5
  put statment * 5
end

# correct answer
def p_times(statement, num)
  i = 0
  while i < num do
    puts statement
    i += 1
  end
end

def letter_count
  ans = {}
    i = 0
    while i < str.length do
      if ans[str[i]] == nil
        ans[str[i]] = 1
      else
        ans[str[i]] += 1
      end
      i += 1
    end
    ans
  end



  def mock_me
    puts "try this"
    statement= gets
    statement = statement.chomp
    if statement != "cool"
      mock_me
    elsif statement == "cool"
      puts "you got it, cool"
    end
  end

  #correct answer from teachers
  def mock_me
    while true do
      mock = gets.chomp
      if mock == 'quit' || mock == 'q'
        break
      else
        puts mock
      end
    end
  end

  def print_contacts(contacts)
    contacts.each do |k,v|
      puts k,v
    end
  end

  contacts_hash = {'andrew' => '999-999-9999', 'jules' => '555-555-5555', 'noah' => '123-456-7899'}

  def get_contact(contacts)
    puts contacts
    puts 'Name: '
    name = gets.chomp
    puts 'Phone: '
    phone = gets.chomp
    contacts[name] = Phone
    contacts
  end

  # puts get_contact contacts_hash
  def get_contacts(existing_contacts)
    puts "add contact? (y or n)"
    add_contact = gets.chomp.downcase == "y"
    while add_contact do
      get_contact(existing_contacts)
      puts "add another contact? (y or n)"
      add contact = gets.chomp.downcase == "y"
    end
    existing_contacts
  end


  #write a method for get sum to find sum of values in array
  # memo is a method which is an accumulator value, it becomes reevaluated each time
  def get_sum(arr)
    arr.inject do |memo, x|
      memo + x
    end
  end

  #gets max of values in an array
  def get_max(arr)
    arr.inject do |memo, x|
      if memo < x
        x
      else
        memo
      end
    end
  end

  #getting a minimum to find the values in an array
  def get_min(arr)
    arr.inject do |memo, x|
      if memo < x
        memo
      else
        x
      end
    end
  end
