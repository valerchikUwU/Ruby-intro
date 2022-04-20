def search(fileName,resultFile)
  puts "Input age you want to search:"
  studentAge = gets.to_i
  i = 0
  if File.exist?(fileName)
    while (i < stringCounter(fileName) and studentAge != -1)
    file = File.open(resultFile, 'w')
    File.foreach(fileName) do |string|
      if string.include?(studentAge.to_s) 
        file.puts(string)
        puts "Student found"
        i += 1
      end
    end
    puts "Input age you want to search:"
    studentAge = gets.to_i
    end
    if File.zero?(file)
      puts "No student with such age"
    end
    file.close
  else puts "File not found"
  end
end

def stringCounter(fileName)
  list = []
  File.foreach(fileName) {|string| list.push(string)}
  
  return list.length
end

def outputAll(fileName)
  if File.exist?(fileName)
    File.foreach(fileName).with_index {|string, index| 
      puts "#{index}: #{string}"}
  else puts "File not found"
  end
end