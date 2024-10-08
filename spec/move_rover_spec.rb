require_relative '../move_rover'

RSpec.describe "move_rover" do
    
    context "turn left" do
        it "should change from north to west for turn left" do
            expect(turn_rover_left("n")).to eq("w")
        end

        it "should change from west to south for turn left" do
            expect(turn_rover_left("w")).to eq("s")
        end

        it "should change from south to east for turn left" do
            expect(turn_rover_left("s")).to eq("e")
        end

        it "should change from east to north for turn left" do
            expect(turn_rover_left("e")).to eq("n")
        end
    end

    context "turn right" do
        it "should change from north to east for turn right" do
            expect(turn_rover_right("n")).to eq("e")
        end

        it "should change from east to south for turn right" do
            expect(turn_rover_right("e")).to eq("s")
        end

        it "should change from south to west for turn right" do
            expect(turn_rover_right("s")).to eq("w")
        end

        it "should change from west to north for turn right" do
            expect(turn_rover_right("w")).to eq("n")
        end
    end

    context "move rover forward" do
        it "moves rover one step forward in north direction" do
            expect(move_forward('x','y','n')).to eq('x,y+1')
        end

        it "moves rover one step forward in west direction" do
            expect(move_forward('x','y','w')).to eq('x-1,y')
        end

        it "moves rover one step forward in south direction" do
            expect(move_forward('x','y','s')).to eq('x,y-1')
        end

        it "moves rover one step forward in east direction" do
            expect(move_forward('x','y','e')).to eq('x+1,y')
        end
    end

    context "when the instructions are in the form of a sequence of letters" do
        it "should find the final rover facing direction if the original face is north" do
            expect(continuous_movement("LMLMLMLMM")).to eq('N')
        end
    end
end