require 'rails_helper'

describe Contact do
  it "should validate the presence of a name" do
    contact_name = Contact.new({:name => 'Bob'})
    expect(contact_name.save).to eq true
  end

  #   it { expect have_many :phones}
  it "should have many phone (maybe)" do
    # ...
    expect(aContact.phones.length).to eq 1
    expect(aContact.phones.first).to eq aPhone
  end
end
