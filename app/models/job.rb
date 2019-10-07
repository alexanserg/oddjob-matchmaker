class Job < ApplicationRecord

  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
    validates :description, presence: true
    validates :pricerange, presence: true
    validates :timerange, presence: true
    validates :contact, presence: true
  
  end
