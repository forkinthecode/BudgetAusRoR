task :import_budget_data => :environment do
	require 'csv'
	Portfolio.all.map &:destroy
	["portfolios","agencies","programs","components"].each do |x|
		Portfolio.connection.execute "ALTER TABLE #{x} AUTO_INCREMENT = 1"
		#sets ids back to 1 so urls remain the same regardless of how many times 
		#the data is fed into the tables through this rake file
	end
	CSV.foreach("./budget.csv", :headers => true) do |row|
		portfolio = Portfolio.where( :name => row['portfolio']).first_or_create!
		agency = portfolio.agencies.where( :name => row['agency'].first_or_create!
			#acronym is considered redundant column and removed from rake file 
			#rake file needs to be re-run to re-generate the data for the agency table
			#agency table column may need to be deleted
		program = agency.programs.where(:name => row['program']).first_or_create!
		#program.objective = row['objectives']
		#program.save!
		component = program.components.where(:name => row['component']).first_or_initialize
		# "last","current","plus1","plus2","plus3","source","url"
		component.last_year		= row['last']
		component.current_year 	= row['current']
		component.plus1 		= row['plus1']
		component.plus2 		= row['plus2']
		component.plus3 		= row['plus3']
		component.source 		= row['source']
		component.url 			= row['url']
		component.save!
		puts "#{portfolio.name} - #{agency.name} - #{program.name} - #{component.name} created!"
	end
end