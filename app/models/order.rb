class Order < ApplicationRecord
  belongs_to :waiter
  validates_presence_of :totalprice
  validates_numericality_of :totalprice
end
