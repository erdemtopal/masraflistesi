class Duyuru < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, allow_blank: false
  	validates :body, presence: true, allow_blank: false
end
