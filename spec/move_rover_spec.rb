require_relative '../move_rover'

RSpec.describe "move_rover" do
    let(:move_rover) { instance_double(move_rover) } 
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

=begin
    it "mocking original code" do
        # Creating a mock of move_rover
        # Stubbing the method to return a controlled response
        allow(move_rover).to receive(:turn_rover).with('left', 'North').and_return({ 'new_rover_face' => 'West' })
        move_rover = move_rover.turn_rover('left','North')
        expect(move_rover).to eq('left')
    end
=end


#   Test case 3:
#   If the input/instruction is M, the rover successfully moves 1 step forward


# 2. What happens when I create an error or add invalid input? (check the validation)

end