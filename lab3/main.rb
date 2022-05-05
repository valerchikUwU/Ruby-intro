require 'json'
def replacing (str)
    if str[str.length-2, str.length-1] == "CS"
      puts 2 ** str.length
    else puts str.reverse
    end
  end
  
  def pokemonsList ()
    arr = []
    puts "How many pokemons do you want to add?"
    quantity = gets.to_i
    if quantity > 0
      until quantity == 0
        puts "Input name:"
        name = gets.chomp
        puts "Input color:"
        color = gets.chomp
        arr.push({name: name, color: color})
        quantity -= 1
      end
    else puts "No pokemons to add"
    end
    puts arr.to_json
    arr.each {|hash| puts hash}
  end
  
  
  str = gets.chomp
  replacing(str)
  pokemonsList()
        
    