# == Schema Information
#
# Table name: questions
#
#  id                        :bigint           not null, primary key
#  anonymous_to_all          :boolean          default(FALSE)
#  anonymous_to_students     :boolean          default(FALSE)
#  assignment_tag            :string
#  body                      :text
#  marked_good_by_instructor :boolean          default(FALSE)
#  title                     :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  enrollment_id             :integer
#

class Question < ApplicationRecord
  belongs_to :enrollment
  # has_many :upvotes, :dependent => :destroy
  has_many :upvotes, as: :post, :dependent => :destroy
  has_many :responses, :dependent => :destroy
  has_many :question_tags, :dependent => :destroy
  has_many :attached_images, :dependent => :destroy

  has_one :user, :through => :enrollment, :source => :user
  has_many :tags, :through => :question_tags, :source => :tag
end
