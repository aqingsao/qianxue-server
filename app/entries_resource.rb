
require File.join(File.dirname(__FILE__), 'base_resource')
require File.join(File.dirname(__FILE__), '../model/entry')

# module Sinatra
#   module EntriesResource
#     def self.registered(app)
#       app.get '/entries' do
#         @todos=Entry.all :order=>[:created_at]
#         "entries"
#       end
#       app.get '/entries/:id' do
#         @entry = Entry.get(:id)
#         'Hi'
#       end
#     end
#   end
#   register BooksResource
# end

module My
  class EntriesResource < BaseResource
    # get '/entries/:id' do
    #   @entry = Entry.find(:id)
    #   'Hi'
    # end
    get '/entries' do
      # @todos=Todo.all :order=>[:created_at]
      'entries'
    end
  end
end  