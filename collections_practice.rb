require 'pry'
def begins_with_r(array)
  array.each do |element|
    if element[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element[0..1]== "wa"
  end
end

def remove_non_strings(array)
  new=[]
  array.each do |element|
    if element.class == String
      new<<element
    end
  end
  new
end

def count_elements(array)
  array.each do |each_hash|
    each_hash[:count]= 0
    name=each_hash[:name]
    array.each do |same_hash|
      if same_hash[:name]==name
        each_hash[:count]+=1
      end
    end
  end.uniq
end

def merge_data(keys,data)
  array=[]
  keys.each do |each_key_hash|
    data.each do |all_data_hashes|
      all_data_hashes.each do |name_key, data_hash|
        if each_key_hash.values.join == name_key
          array<<each_key_hash.merge(data_hash)
        end
      end
    end
  end
  array
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature]=="cool"
  end
end

def organize_schools(schools)
  schools_by_location={}
  schools.collect do |school_name, location_hash|
    location_hash.collect do |the_word_location, actual_location|
      if schools_by_location.keys.include?(actual_location)==false
        schools_by_location[actual_location]=[school_name]
      else
        schools_by_location[actual_location]<<school_name
      end
    end
  end
  schools_by_location
end
