require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
    post  '/results' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total

   @combo = recipe_generator(@total)
   if @combo == "breakfast_gluten"
     erb :breakfast_gluten
   elsif @combo == "breakfast_v_v"
     erb :breakfast_v_v
   elsif @combo == "breakfast_none"
     erb :breakfast_none
   elsif @combo == "lunch_gluten"
    erb :lunch_gluten
    elsif @combo == "lunch_v_v"
    erb :lunch_v_v
    elsif @combo == "lunch_none"
    erb :lunch_none
    elsif @combo == "dinner_gluten"
    erb :dinner_gluten
    elsif @combo == "dinner_v_v"
    erb :dinner_v_v
    elsif @combo == "dinner_none"
    erb :dinner_none
end

end
end