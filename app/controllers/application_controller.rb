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
   answers = params.values      # .values return an array of the values assigned
   @total= 0                    #sets total to 0 because this is where we start off as
   answers.each do |answer|     # iterates thru the values of said array
     @total += answer.to_i      #total is incremented based of the number combos
   end
   puts @total                  #total based on number assigned to choices

   @combo = recipe_generator(@total) #combo is now what the total of the number combos
   if @combo == "breakfast_gluten"   #called from the model 
     erb :breakfast_gluten           #redirects results link to breakfast glutten free recipes
   elsif @combo == "breakfast_v_v"
     erb :breakfast_v_v
   elsif @combo == "breakfast_none"
     erb :breakfast_none

    end

    end
end