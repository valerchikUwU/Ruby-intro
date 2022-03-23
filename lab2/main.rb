

def greetings (first_name, last_name, age)
    if age < 18 
      puts "Hello, #{first_name} #{last_name}. You are younger then 18, but you can start programming just now!" 
      else puts "Hello, #{first_name} #{last_name}. It's just the time to start!"
    end
  end
  
  def foobar (a, b)
    if a == 20 or b == 20
      return b
    else puts a+b
    end
  end
  
  
  puts "Input your first name: "
  first_name = gets.chomp
  puts "Input your last name: "
  last_name = gets.chomp
  puts "Input your age: "
  age = gets.to_i
  greetings(first_name, last_name, age)
  puts "Input your first number: "
  a = gets.to_i
  puts "Input your second number: "
  b = gets.to_i
  foobar(a, b)
  
  
  
    
    