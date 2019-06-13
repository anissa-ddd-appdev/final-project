# == Schema Information
#
# Table name: favorites
#
#  id           :integer          not null, primary key
#  itinerary_id :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :itinerary
end
