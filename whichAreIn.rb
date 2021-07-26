def in_array(array1, array2)
  r = []
  array2.each{ |element2|
    array1.each{ |element1|
      if element2.include? element1
          if r[r.length] != element1
            r.push(element1)
          end
      end
    }
  }
  return r.uniq.sort
end

a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

puts in_array(a1, a2)
#array2 ma zawierac array1