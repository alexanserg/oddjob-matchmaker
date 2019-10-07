class Worker < ApplicationRecord

  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
    validates :name, presence: true
    validates :specialty, presence: true
    validates :availabilty, presence: true
    validates :contact, presence: true
    before_save(:titleize_worker)

    private
    def titleize_product
      self.name = self.name.titleize
    end
  end
