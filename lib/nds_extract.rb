$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'


# [{:name=>"Larry"}, {:name=>"Curly"}, {:name=>"Moe"}, {:name=>"Iggy"}]

def list_of_directors(source)
counter = 0 
director_name = source[counter][:name]
result = []

  while counter < source.count do 
   director_name = source[counter][:name]
   counter += 1 
   result << director_name 
  end 

result  
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
result = []

  while counter < source.count do 
   director_name = source[counter][:name]
   counter += 1 
   result << director_name 
  end 

result  
end





 

 movie_counter = 0
 director_counter = 0 
 total = 0  
  p source[director_counter][:movies]
  while movie_counter < source[director_counter][:movies].count do 
   total += source[director_counter][:movies][movie_counter][:worldwide_gross]
   movie_counter += 1 
   director_counter += 1 
  end 
total 
end


