class Donation < ActiveRecord::Base
  validates :nonprofit_id, presence: true
  validates :amount, presence: true
  belongs_to :nonprofit

  before_save :make_donation

  def make_donation
    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here https://dashboard.stripe.com/account
    Stripe.api_key = "sk_test_4BQTUq19uIEaduN0K9kikaxm"

    # Get the credit card details submitted by the form
    # token = params[:stripeToken]

  # Create the charge on Stripe's servers - this will charge the user's card
    begin

      # binding.pry
      charge = Stripe::Charge.create(
        :amount => self.amount, # amount in cents, again
        :currency => "usd",
        :card => token

      )
    rescue Stripe::CardError => e
  # The card has been declined
    end
  end
end
