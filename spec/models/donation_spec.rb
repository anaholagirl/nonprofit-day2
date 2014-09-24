require 'rails_helper'

describe Donation do
  it { should validate_presence_of :nonprofit_id }
  it { should validate_presence_of :amount }
  it { should belong_to :nonprofit }
  it { should belong_to :user }
end
