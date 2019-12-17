# == Schema Information
#
# Table name: upvotes
#
#  id            :bigint           not null, primary key
#  post_type     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  enrollment_id :integer
#  post_id       :integer
#

class Upvote < ApplicationRecord
  belongs_to :enrollment
  belongs_to :post, polymorphic: true
  # belongs_to :question
end
