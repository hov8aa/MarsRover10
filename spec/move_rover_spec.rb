require_relative '../move_rover'

RSpec.describe "move_rover" do

# What to test for
# 1. What happens in the happy path?
#   Test case 1:
#   If the input/instruction is L, the rover successfully turns Left

    #describe "The rover turns left" do
        #let(:instruction) { "left" }
        it "If the input command is Left" do
            instruction = $stdin.gets.chomp
            expect(instruction).to eq('left')
        end
    #end

#   Test case 2:
#   If the input/instruction is R, the rover successfully turns Right

    #describe "The rover turns right" do
        #let(:instruction) { "left" }
        it "If the input command is Right" do
            instruction = $stdin.gets.chomp
            expect(instruction).to eq('right')
        end
    #end


#   Test case 3:
#   If the input/instruction is M, the rover successfully moves 1 step forward


# 2. What happens when I create an error or add invalid input? (check the validation)

end