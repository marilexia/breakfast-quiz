# class SampleModel
#   attr_accessor :name, :age
# end

def recipe_generator(user_value) #from index -- value is the number assigned to each choice
     if user_value == 12
        "breakfast_gluten" 
     elsif user_value == 14
        "breakfast_v_v"
     elsif user_value == 16
        "breakfast_none"
   
end
    
    # breakfast_gluten, breakfast_v_v and breakfast_none will be called 
    #later on in the app controller as pathways to respective recipe pages!
end
