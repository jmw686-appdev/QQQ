# frozen_string_literal: true

# == Schema Information
#
# Table name: resources
#
#  id         :bigint           not null, primary key
#  id_from_tc :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  context_id :integer
#

class Resource < ApplicationRecord
  has_many :launches, dependent: :destroy
  has_many :submissions, dependent: :destroy
  belongs_to :context

  has_many :users, :through => :launches, :source => :user
  has_many :enrollments, :through => :users, :source => :enrollments
  has_many :questions, :through => :enrollments, :source => :questions
end
