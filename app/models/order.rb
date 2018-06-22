class Order < ActiveRecord::Base

  belongs_to :user
  has_many :line_items

  monetize :total_cents, numericality: true

  validates :stripe_charge_id, presence: true

  def total
    result = 0
    line_items.each do |item|
      item_total = item.product.price * item.quantity
      result += item_total
    end
    result
  end

end
