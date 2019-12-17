# frozen_string_literal: true

# == Schema Information
#
# Table name: enrollments
#
#  id                   :bigint           not null, primary key
#  notification_setting :string
#  roles                :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  context_id           :integer
#  user_id              :integer
#

class Enrollment < ApplicationRecord
  has_many :launches, dependent: :destroy
  has_many :submissions, dependent: :destroy
  has_many :questions, :dependent => :destroy
  has_many :upvotes, :dependent => :destroy
  has_many :responses, :dependent => :destroy
  has_many :images, :dependent => :destroy
  belongs_to :context
  belongs_to :user

  has_one :resource, :through => :user, :source => :resources

  def teacher?
    roles.downcase.include?("teachingassistant") || roles.downcase.include?("instructor")
  end

  def has_upvoted_question?(question)
    question.upvotes.pluck(:enrollment_id).include?(self.id)
  end

  def has_upvoted_response?(response)
    response.upvotes.pluck(:enrollment_id).include?(self.id)
  end
end
