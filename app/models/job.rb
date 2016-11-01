class Job < ApplicationRecord
	has_and_belongs_to_many :boats
	belongs_to :users

	validates :title, uniqueness: true
	validates :description, length: { minimum: 50,
    	too_short: "%{count} characters is the too short" }
    validates :cost_of_job, numericality: { greater_than_or_equal_to: 1000 }
end
