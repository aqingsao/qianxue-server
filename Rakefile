#encoding: utf-8

task :environment do
	require File.join(File.dirname(__FILE__), 'load')
end

namespace :data do
	desc "load initial data"
	task :load => 'db:migrate' do
		Book.create({
			title: 'JavaScript精粹',
			subTitle: '2013 JavaScript力作'
		})
		Book.create({
			title: 'Ruby On Rails',
			subTitle: '名师力作'
		})

	end
end

namespace :db do
	desc "migrate database"
	task :migrate => :environment do
		DataMapper.auto_migrate!
	end
end