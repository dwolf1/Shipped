class Boat < ApplicationRecord
  	has_and_belongs_to_many :jobs
  	# belongs_to :users
	has_many :assignments
	has_many :jobs, through: :assignments

  	validates :name, uniqueness: true

	has_attached_file :avatar,
 	:styles => { :medium => "300x300>", :thumb => "200x200>" },
 	:default_url => "missing.png"

	validates_attachment_content_type :avatar,
 	:content_type => /\Aimage\/.*\Z/

 end
