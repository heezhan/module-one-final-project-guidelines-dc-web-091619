# require_relative "../app/models/handbag.rb"

describe "Handbag" do
  let (:chanel) {Brand.find_by(name: "Chanel")}
  let (:boy_bag) {Handbag.find_by(brand: chanel, bag_type: "Boy Bag small", cost: 800)}
  it "finds the first handbag information of the bag type that was passed in the parameter" do
    expect(Handbag.find_by_name("Boy Bag small")).to eq(boy_bag)
  end
end













