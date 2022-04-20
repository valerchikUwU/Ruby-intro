def index(fileName)
  if File.exist?(fileName)
    File.foreach(fileName).with_index {|string, index| 
      puts "#{index}: #{string}"}
  else puts "File not found"
  end
end

def find(id, fileName)
  if File.exist?(fileName)
    File.foreach(fileName).with_index do |string, index|
      if index.eql? id 
        puts "Your string is #{string}" 
      end
    end
  else puts "File not found"
  end
end

def where(pattern, fileName)
  list = []
  if File.exist?(fileName)
    File.foreach(fileName) do |string|
      if string.include?(pattern)
        list.push(string)
      end
    end
    list.each.with_index { |val,index| 
      puts "index: #{index} for #{val}" }
  else puts "File not found"
  end
end

def update(fileName, bufferFile, id, str)
  if File.exist?(fileName)
    file = File.open(bufferFile, 'w')
    File.foreach(fileName).with_index do |string, index|
    file.puts(id == index ? str : string)
    end
    file.close
  File.write(fileName, File.read(bufferFile))
  File.delete(bufferFile) if File.exist?(bufferFile)
  else puts "File not found"
  end
end
  

def delete(fileName, id)
  if File.exist?(fileName)
    list = []
    File.foreach(fileName).with_index do |string, index|
      if index != id
        list.push(string)
      end
    end
    File.write(fileName, list.join())
  else puts "File not found"
  end
end

FILE_PATH = 'students.txt'
BUFFER_PATH = 'buffer.txt'
index(FILE_PATH)
find(2, FILE_PATH)
where("Ma", FILE_PATH)
delete(FILE_PATH, 3)