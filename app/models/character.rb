# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  latitude   :string(255)
#  longitude  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gmaps      :boolean
#

class Character < ActiveRecord::Base
  attr_accessible :name, :address, :latitude, :longitude
  acts_as_gmappable


  	def gmaps4rails_address
		#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  		#"#{self.street}, #{self.city}, #{self.country}"
  		address
	end


            
  def gmaps4rails_marker_picture
  {
    "rich_marker" =>  "<div class='my-marker'>
      <img height='30' width='30' src='https://secure.gravatar.com/avatar/ankithbti007@gmail.com'/></div>"
  }
  end

  
	# def gmaps4rails_infowindow
 #      "<h1>#{name}</h1>"
 #  end

  # def gmaps4rails_title
  #     # add here whatever text you desire
  #     "<h4>Title</h4>"
  # end

  # def gmaps4rails_marker_picture
  #   {
  #    "picture" => "/images/#{name}.png",
  #    "width" => 20,
  #    "height" => 20,
  #    "marker_anchor" => [ 5, 10],
  #    "shadow_picture" => "/images/morgan.png" ,
  #    "shadow_width" => "110",
  #    "shadow_height" => "110",
  #    "shadow_anchor" => [5, 10],
  #   }
  # end
end
