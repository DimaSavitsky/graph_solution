require 'lib/data_container'

class GraphSolution < Sinatra::Base

  set :public_folder => "public", :static => true

  get "/" do
    erb :graph
  end

  get "/data" do
    content_type :json
    DataContainer.new.plans_json
  end

end
