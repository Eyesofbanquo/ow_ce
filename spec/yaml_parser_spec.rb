# spec/yaml_parser_spec.rb
require 'yaml_parser'

describe YamlParser do

    describe "#parse" do
        context "given an empty string" do
            it "returns empty hash" do
                expect(YamlParser.parse("")).to eql({})
            end
        end

        context "given an incorrect file path" do
            it "raises an error" do
                expect(YamlParser.parse("./something.yaml")).to eql({})
            end
        end

        context "given a correct file path" do
            it "returns hash" do
                expect(YamlParser.parse("./stubs/stub.yaml")).to_not eql({})
            end

            it "returns the name 'joe'" do
                expect(YamlParser.parse("./stubs/stub.yaml")["name"]).to eql("joe")
            end
        end
    end

    describe "#union_keys" do
        context "when given an empty hash" do
            it "returns an empty array" do
                expect(YamlParser.union_keys({})).to eql([])
            end
        end

        context "when given a non empty hash" do 
            hash = YamlParser.parse("./stubs/stub.yaml")
            it "returns an array of keys" do
                expect(YamlParser.union_keys(hash)).to_not eql([])
            end

            it "returns 3 elements" do
                expect(YamlParser.union_keys(hash).size).to eql(3)
            end
        end
    end

end