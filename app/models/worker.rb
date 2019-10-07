class Worker < ApplicationRecord

    validates :name, presence: true
    validates :specialty, presence: true
    validates :availability, presence: true
    validates :contact, presence: true
    before_save(:titleize_worker)

    private
    def titleize_worker
      self.name = self.name.titleize
    end
  end
