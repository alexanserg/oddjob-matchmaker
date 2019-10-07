class Job < ApplicationRecord

  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
    validates :description, presence: true
    validates :pricerance, presence: true
    validates :timerange, presence: true
    validates :contact, presence: true
    before_save(:titleize_job)

    private
    def titleize_product
      self.name = self.name.titleize
    end
  end
