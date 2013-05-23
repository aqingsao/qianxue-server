Bundler.require

Dir.glob(File.join(File.dirname(__FILE__), "./model/*.rb")).each{|file| require file}

DataMapper.setup(:default, 'sqlite::memory:')

DataMapper.auto_migrate!

