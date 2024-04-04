class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :budget, presence: true, numericality: { greater_than: 0 }
  validates :asked_items, presence: true
  validates :start_time, presence: true
  validates :email, presence: true
  validates :informations, presence: true
end
