class Title < ApplicationRecord
  validates :subject, presence: true
  validates :text, presence: true
  belongs_to :user
end
