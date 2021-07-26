#! /usr/bin/env ruby

class FSM
  def initialize(instructions)
    @instr = instructions.delete(";,").split(" ").each_slice(4).to_a
  end
  
  def run_fsm(start, sequence)
    path = []
    result = []
    output = 0
    path.push(start)

    for j in 0..sequence.length-1
      i = 0
      @instr.each{ |first| first[0] == start ? break : i += 1 }
      sequence[j] == 0 ? start = @instr[i][1] : start = @instr[i][2]
      path.push(start)
    end

    @instr.each{ |first| first[0] == start ? output = first[3].to_i : i += 1 }
    result.push(start)
    result.push(output)
    result.push(path)
    return result
  end

end



instructions = """\
S1; S1, S2; 9
S2; S1, S3; 10
S3; S4, S3; 8
S4; S4, S1; 0"""

start  = "S1"
inputs = [0, 1, 1, 0, 1]

my_fsm = FSM.new(instructions)
puts my_fsm.run_fsm(start, inputs)
