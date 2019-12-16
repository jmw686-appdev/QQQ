# == Schema Information
#
# Table name: images
#
#  id            :bigint           not null, primary key
#  source        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  enrollment_id :integer
#

class Image < ApplicationRecord
  belongs_to :enrollment
  has_many :attached_images, :dependent => :destroy

end
