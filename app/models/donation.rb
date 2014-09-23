class Donation < ActiveRecord::Base
  validates :nonprofit_id, presence: true
  validates :amount, presence: true
end
