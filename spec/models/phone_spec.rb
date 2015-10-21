require 'rails_helper'

describe Phone do
  #it { expect validate_presence_of :number }
  #it { expect validate_presence_of :contact_id }

  #it { expect belong_to :contact}

  it "should belong to a contact" do
    aPhone = Phone.new
    aContact = Contact.new
    aPhone.contact = aContact
    expect(aPhone.contact).to eq aContact
  end
end
