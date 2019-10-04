
require 'pry'

describe "Customer" do
  let (:customer_name) {Customer.find_by(name: "Christina Park")}
  let (:boy_bag) {Handbag.find_by_name("Boy Bag small")}

  it "finds the handbag information of the bag type that was rented by the customer" do
    expect(Customer.bag_type("Christina Park")).to include(boy_bag)
  end
end
