class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  #all beanies
  get "/beaniebabies" do
    beanie_babies = BeanieBaby.all
    beanie_babies.to_json
  end

  #all collectors 
  get "/collectors" do
    collectors = Collector.all
    collectors.to_json
  end

#create beanie
post "/beaniebabies" do
  beanie_baby = BeanieBaby.create(
    name: params[:name],
    dob: params[:dob],
    poem: params[:poem],
    retired: params[:retired],
    img: params[:img]
  )
  beanie_baby.to_json
end

#delete beanie
delete "/beaniebabies/:id" do
  beanie_baby = BeanieBaby.find(params[:id])
  beanie_baby.destroy
  beanie_baby.to_json
end

# #get beanies by birthdate
#   get "/beaniebabies/:birthday" do
#   beanie_baby = BeanieBaby.find_by(params[:birthday])
#   beanie_baby.to_json
#   end
end
