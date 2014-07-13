class Program < ActiveRecord::Base
	belongs_to :agency
	has_many :components, :dependent => :destroy
end
