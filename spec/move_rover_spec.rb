require_relative '../move_rover'

RSpec.describe "move_rover" do
    
    context "turn left" do
        it "should change from north to west for turn left" do
            expect(turn_rover_left("N")).to eq("W")
        end

        it "should change from west to south for turn left" do
            expect(turn_rover_left("W")).to eq("S")
        end

        it "should change from south to east for turn left" do
            expect(turn_rover_left("S")).to eq("E")
        end

        it "should change from east to north for turn left" do
            expect(turn_rover_left("E")).to eq("N")
        end
    end

    context "turn right" do
        it "should change from north to east for turn right" do
            expect(turn_rover_right("N")).to eq("E")
        end

        it "should change from east to south for turn right" do
            expect(turn_rover_right("E")).to eq("S")
        end

        it "should change from south to west for turn right" do
            expect(turn_rover_right("S")).to eq("W")
        end

        it "should change from west to north for turn right" do
            expect(turn_rover_right("W")).to eq("N")
        end
    end

    context "move rover forward" do
        it "moves rover one step forward in north direction" do
            expect(move_forward('x','y','N')).to eq('x,y+1')
        end

        it "moves rover one step forward in west direction" do
            expect(move_forward('x','y','W')).to eq('x-1,y')
        end

        it "moves rover one step forward in south direction" do
            expect(move_forward('x','y','S')).to eq('x,y-1')
        end

        it "moves rover one step forward in east direction" do
            expect(move_forward('x','y','E')).to eq('x+1,y')
        end
    end

    context "when the instructions are in the form of a sequence of letters" do
        it "should find the final rover facing direction if the original face is north" do
            expect(continuous_movement("LMLMLMLMM","N")).to eq('N')
        end
    end
end