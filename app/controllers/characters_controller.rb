class CharactersController < ApplicationController
  def index
    @characters = Character.all
    # @json = Character.all.to_gmaps4rails
    # @json = Character.all.to_gmaps4rails do |character, marker|
    #   #marker.infowindow render_to_string(:partial => "/users/my_template", :locals => { :object => character})
    #   marker.picture({
    #                   :picture => "rails.png",
    #                   :width   => 32,
    #                   :height  => 32
    #                  })
    #   marker.title   "i'm the #{character.name}"
    #   marker.sidebar "i'm the sidebar"
    #   marker.json({ :id => character.id })
    # end
    @json = Character.all.to_gmaps4rails do |character, marker|
      marker.json({ :id => character.id })
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(params[:character])
    if @character.save
      redirect_to @character, :notice => "Successfully created character."
    else
      render :action => 'new'
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update_attributes(params[:character])
      redirect_to @character, :notice  => "Successfully updated character."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_url, :notice => "Successfully destroyed character."
  end
end
