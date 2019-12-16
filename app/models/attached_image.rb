# == Schema Information
#
# Table name: attached_images
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_id    :integer
#  question_id :integer
#  response_id :integer
#

class AttachedImage < ApplicationRecord
  belongs_to :question
  belongs_to :response
  belongs_to :image

end
