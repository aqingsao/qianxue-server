task :environment do
	require File.join(File.dirname(__FILE__), 'load')
end

namespace :data do
	desc "load initial data"
	task :load => 'db:migrate' do
		Book.create({
			title: 'Java Script'
			})
	end
end

namespace :db do
	desc "migrate database"
	task :migrate => :environment do
		DataMapper.auto_migrate!
	end
end