def flip(dir, box)
  case dir
  when 'R'
    return box.map { |el| el.sort }
  when 'L'
    return box.map { |el| el.sort.reverse }
  when 'D'
    return box.transpose.map! { |el| el.sort }.transpose
  when 'U'
    return box.transpose.map { |el| el.sort.reverse }.transpose
  end
end

        
print flip('U', [ [1, 3, 2],
                  [4, 5, 1],
                  [6, 5, 3],
                  [7, 2, 9] ])