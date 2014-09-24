class Subscription < ActiveRecord::Base
  require 'stripe'
  validates :nonprofit_id, presence: true
  validates :price, presence: true
  validates :plan_name, presence: true

  belongs_to :nonprofit
  belongs_to :plan
  belongs_to :user



end
