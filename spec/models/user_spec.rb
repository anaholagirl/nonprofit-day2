require 'rails_helper'

# RSpec.describe User, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
  describe User do

    it { should have_many :donations }
  end
