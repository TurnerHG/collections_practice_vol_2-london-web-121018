# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0] == "w" && word[1] == "a"
  end
end

def remove_non_strings(array)
  array.select do |word|
    word.class == String
  end
end

def count_elements(array)
  array.uniq.each do |i|
    count = 0
    array.each {|i2| if i2 == i then count += 1 end}
      i[:count] = count
    end
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(cool)
  cool.select {|i| i.any? {|k,v| v == "cool"}}
end

def organize_schools(schools)
  locations_hash = {}
  schools.collect {|k,v| locations_hash[v[:location]] = []}
  locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
