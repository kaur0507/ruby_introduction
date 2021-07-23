def flip(dir, box)
  case dir
  when 'R'
    return box.each.sort
  when 'L'
    return box.sort.reverse
  when 'D'
    
  when 'U'
    
  end
end

BOX = [ [1, 3, 2],
        [4, 5, 1],
        [6, 5, 3],
        [7, 2, 9] ]
        
# puts flip('L', BOX)
BOX.map { |el| puts el }