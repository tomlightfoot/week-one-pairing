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
    puts "A house was sold in #{k[0]}, #{k[1]} for [price] on [date]"
  }
end

humanReadable(@data)
