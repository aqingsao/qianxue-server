Bundler.require


dbFile = File.expand_path(File.join(File.dirname(__FILE__), 'tmp/dev.db'))

DataMapper.setup(:default, 'sqlite:///' + dbFile)

Dir.glob(File.join(File.dirname(__FILE__), "./model/*.rb")).each{|file| require file}

DataMapper.finalize

