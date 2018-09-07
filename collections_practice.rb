# your code goes here
def begins_with_r(array)
  array.all? { |word| word.start_with? "r" }
end

def contain_a(array)
  array_a = []
  array.each do |word|
    if word.include?("a")
      array_a << word
    end
  end
  return array_a
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |element| element != element.to_s }
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |result_hash|
      if result_hash[:name] == name
        hash[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(keys, data)
  array = []
  keys.each do |person_name|
    name = person_name[:first_name]
    data.each do |person_data|
        merged_person = person_data[name]
        merged_person[:first_name] = name
        array << merged_person
    end
  end
  array
end

def find_cool(cool)
  array = []
  cool.each do |item|
    if item[:temperature] == "cool"
      array << item
    end
  end
  array
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
