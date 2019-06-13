# == Schema Information
#
# Table name: itineraries
#
#  id          :integer          not null, primary key
#  name        :string
#  photo       :string
#  url         :string
#  description :string
#  length      :integer
#  country     :string
#  region_id   :integer
#  owner_id    :integer
#  travel_time :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Itinerary < ApplicationRecord
    belongs_to :owner, :class_name => "User"
    belongs_to :region
    has_many :favorites, :dependent => :destroy
    has_many :fans, :through => :favorites, :source => :user
end
