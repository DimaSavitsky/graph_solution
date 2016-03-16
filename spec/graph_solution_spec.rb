require_relative "spec_helper"
require_relative "../graph_solution.rb"

def app
  GraphSolution
end

describe GraphSolution do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
