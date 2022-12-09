class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/collectors" do
    collectors = Collector.all.order(:name)
    collectors.to_json(include: :beanie_babies)
  end
  #CREATE collector 
  post "/collectors" do
    collector = Collector.create(
      name: params[:name],
      dob: params[:dob]
    )
    collector.to_json(include: :beanie_babies)
  end
  #DELETE collector
  delete "/collectors/:id" do
    collector = Collector.find(params[:id]).destroy
  end
  #CREATE create new beanie for collector's collection
  post "/collectors/:id" do
    collector = Collector.find(params[:id])
    beanie_baby = BeanieBaby.create(
      name: params[:name],
      dob: params[:dob],
      poem: params[:poem],
      pellets: params[:pellets],
      img: params[:img],
      collector_id: params[:id]
    )
    beanie_baby.to_json
  end
#UPDATE Edit beanie babies poem
  patch "/collectors/:id" do 
    beanie = BeanieBaby.find(params[:id])
    beanie.update(
      poem: params[:poem]
    )
    beanie.to_json
  end
  #DELETE beanie from collector's collection
  delete "/beaniebabies/:id" do
    beanie_baby = BeanieBaby.find(params[:id])
    beanie_baby.destroy
  end

end
