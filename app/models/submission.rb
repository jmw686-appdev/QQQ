# frozen_string_literal: true

# == Schema Information
#
# Table name: submissions
#
#  id            :bigint           not null, primary key
#  score         :float            default(0.0)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  enrollment_id :integer
#  resource_id   :integer
#

class Submission < ApplicationRecord
  belongs_to :resource
  belongs_to :enrollment
end
