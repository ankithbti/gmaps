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

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Character.new.valid?
  end
end
