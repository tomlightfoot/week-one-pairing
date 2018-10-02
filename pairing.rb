require './house_prices_by_area.rb'

def moveAlong(arr)
  arr.shift
  arr << 6
end

def sortArr(arr)
  arr.sort
end

def sortMoveArr(arr)
  moveAlong(sortArr(arr))
end

def sumArr(arr)
  arr.sum
end

def doublesArr(arr)
  sumArr(arr) * 2
end

def addOneHash(hsh)
  hsh.each{ |k, v|
    hsh[k] = v + 1
  }
end

def sortHashValues(hsh)
  hsh.values.sort
end

def sortHash(hsh)
  sorted = sortHashValues(hsh)
  hsh.each { |k, v|
    hsh[k] = sorted[0]
    sorted.shift
  }
end

def invertAndConvert(hsh)
  hsh.map { |k, v| [k.to_s, v.to_s] }.to_h.invert
end

def humanReadable(data)
  data.each{ |k, v|
    puts "A house was sold in #{k[0]}, #{k[1]} for £#{v[:average]} on #{v[:transactions][0][2]}"
  }
end

def finder(data)
  array = wards_and_districts(data)
  user_input = ""
  until array.include?(user_input)
    puts "Which district or ward would you like to see?"
    user_input = gets.chomp
  end
    ward_or_district = data.select { |k, v| k[0] == user_input || k[1] == user_input }
    humanReadable(ward_or_district)
end

def wards_and_districts(data)
  array = []
  data.each_key { |key| array << key }
  array = array.flatten
end


finder(@data)
