
describe "Brand" do
  let  (:brand) {Brand.find_by(name: "Celine")}
  it "looks through all the brands and finds the first brand name that matches the parameter" do
    expect(Brand.find_by_name("Celine")).to eq(brand)
  end

  it "looks through the table and returns all the brands that we carry" do
    expect().to eq()
  end
end




