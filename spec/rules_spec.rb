# spec/rules_spec.rb
require 'rules_loader'

describe RulesLoader do
  include RulesLoader

  describe "#load_json" do
    context "when given an empty path" do
      it "will return an empty array" do
        expect(load_json("")).to eql([])
      end
    end

    context "when given a correct path" do
      context "when given assault.json" do
        it "will return 2 points" do
          expect(load_json("data/sample/assault.json").count).to eql(2)
        end

        it "will return 3 tick numbers for point B" do
          assault_data = load_json("data/sample/assault.json")
          point_b = assault_data.find { |x| x["point"] == "B"}
          tick_numbers = point_b["ticks"].count
          expect(tick_numbers).to eql(3)
        end
      end
    end

  end

end