
describe "Customer" do
  let (:customer) {Customer.find_by(name: "Christina Park")}
  it "looks through all the customers and find the first customer name that matches the parameter" do
    expect(Customer.find_by_name("Christina Park")).to eq(customer)
  end
end

