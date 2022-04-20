require_relative "functions_part2"

$stateMenu
def menu()
  puts "Choose action:\n(0) Exit the programm\n(1) Output original data\n(2) Input data\n(3) Output result data\nYour choice: "
  $stateMenu = gets.to_i
end
menu()
$fileName = 'students.txt'
$resultFile = 'results.txt'
while $stateMenu != 0 do
  case $stateMenu
    when 1
      outputAll($fileName)
      menu()
    when 2
      search($fileName, $resultFile)
      menu()
    when 3
      outputAll($resultFile)
      menu()
  else 
    puts "Invalid menu point!"
  end
end

puts "Done!"
