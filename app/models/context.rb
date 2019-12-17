# frozen_string_literal: true

# == Schema Information
#
# Table name: contexts
#
#  id         :bigint           not null, primary key
#  id_from_tc :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Context < ApplicationRecord
  has_one :launch, dependent: :destroy
  has_many :launches, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :resources, dependent: :destroy
  has_many :question_templates, :dependent => :destroy  
  has_many :tags, :dependent => :destroy
  
  has_many :required_fields, :through => :question_templates, :source => :required_fields
end
