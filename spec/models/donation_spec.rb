require 'rails_helper'

describe Donation do
  it { should validate_presence_of :nonprofit_id }
  it { should validate_presence_of :amount }
end
