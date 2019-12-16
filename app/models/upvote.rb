# == Schema Information
#
# Table name: upvotes
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  enrollment_id :integer
#  question_id   :integer
#

class Upvote < ApplicationRecord
  belongs_to :enrollment
  belongs_to :question
end
