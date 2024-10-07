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

    context "move rover" do
        it "moves rover one step forward" do
            expect(move_forward('location')).to eq('location+1')
        end
    end

end