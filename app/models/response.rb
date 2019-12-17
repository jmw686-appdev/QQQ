# == Schema Information
#
# Table name: responses
#
#  id                        :bigint           not null, primary key
#  anonymous_to_all          :boolean          default(FALSE)
#  anonymous_to_students     :boolean          default(FALSE)
#  body                      :text
#  marked_as_answer          :boolean          default(FALSE)
#  marked_good_by_instructor :boolean          default(FALSE)
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  enrollment_id             :integer
#  parent_id                 :integer
#  question_id               :integer
#

class Response < ApplicationRecord
  belongs_to :enrollment
  belongs_to :question
  has_many :upvotes, as: :post, :dependent => :destroy

  has_many :attached_images, :dependent => :destroy

  has_one :user, :through => :enrollment, :source => :user

end
