require 'rails_helper'

describe Subscription do
  it { should validate_presence_of :plan_name }
  it { should validate_presence_of :nonprofit_id }
  it { should validate_presence_of :price }

  it { should belong_to :nonprofit }
end
