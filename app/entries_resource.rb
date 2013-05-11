
require File.join(File.dirname(__FILE__), 'base_resource')

module My
  class EntriesResource < BaseResource
    # get '/entries/:id' do
    #   @entry = Entry.find(:id)
    #   'Hi'
    # end
    get '/api/entries' do
      # @todos=Todo.all :order=>[:created_at]
      'entries'
    end
  end
end  