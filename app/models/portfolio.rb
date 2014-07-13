class Portfolio < ActiveRecord::Base
	has_many :agencies, :dependent => :destroy

	def total_spend
		final_number = 0
		agencies.each do |a|
			a.programs.each do |p|
				p.components.each do |c|
					final_number += c.current_year * 1_000
				end
			end
		end
		return final_number
	end
end
