class PlacesController < ApplicationController
  def index_places
    render json: Place.all
  end
  def new_place
    a = Place.create(
      name: "#{params["name"]}"
      adress: "#{params["adress"]}"
    )
    if a.save
      render json: a
    end
  end
  def update_place
    patch = Product.find_by(id: params["id"])
    patch.name = "#{params["name"]}"
    patch.adress = "#{params["adress"]}"
    render json: patch
  end
  def delete_place
    place = Place.find_by(id: params["id"].to_i)
    place.destroy
    render json: {message: "done"}
  end
end