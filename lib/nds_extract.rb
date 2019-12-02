$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'


# [{:name=>"Larry"}, {:name=>"Curly"}, {:name=>"Moe"}, {:name=>"Iggy"}]

def list_of_directors(source)
counter = 0 
director_name = source[counter][:name]
resultArray = []

  while counter < source.count do 
   director_name = source[counter][:name]
   counter += 1 
   resultArray << director_name 
  end 

resultArray 
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
def directors_totals(source)

director_counter = 0 
result = {
} 
 
while director_counter < source.length do 
 director_name = source[director_counter][:name] 
 movie_counter = 0
 result[director_name] = 0 

  while movie_counter < source[director_counter][:movies].count do 
   result[director_name] += source[director_counter][:movies][movie_counter][:worldwide_gross]
   movie_counter += 1 
  end 

  director_counter += 1 
end 
  
result 
end

#=======================================================================================================

def list_of_directors(source)
counter = 0 
director_name = source[counter][:name]
resultArr = []

  while counter < source.count do 
   director_name = source[counter][:name]
   counter += 1 
   resultArr << director_name 
  end 

resultArr  
end
#frequencies.each { |key, value| puts "#{key} #{value}" }


p result


# total = 0 
# result.each 
# total 
end

# result = 
# {"Stephen Spielberg"=>1357566430, 
# "Russo Brothers"=>2281002470, 
# "James Cameron"=>2571020373, 
# "Spike Lee"=>256624217, 
# "Wachowski Siblings"=>806180282, 
# "Robert Zemeckis"=>1273838385, 
# "Quentin Tarantino"=>662738268, 
# "Martin Scorsese"=>636812242, 
# "Francis Ford Coppola"=>509719258}





#movie_counter = 0
# director_counter = 0 
# total = 0  

#   while movie_counter < source[director_counter][:movies].count do 
#   total += source[director_counter][:movies][movie_counter][:worldwide_gross]
#   movie_counter += 1 
#   director_counter += 1 
#   end 

# total 