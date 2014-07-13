class Agency < ActiveRecord::Base
	belongs_to :portfolio
	has_many :programs, :dependent => :destroy
end
