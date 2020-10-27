require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end
    
    post '/team' do
      @team_name = params["team"]["name"]
      @team_motto = params["team"]["motto"]

      @member1 = params["team"]["members"][0]
      @member2 = params["team"]["members"][1]
      @member3 = params["team"]["members"][2]
      
      erb :'../views/team'
    end
end
