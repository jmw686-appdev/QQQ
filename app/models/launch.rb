# frozen_string_literal: true

# == Schema Information
#
# Table name: launches
#
#  id               :bigint           not null, primary key
#  payload          :jsonb            not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  context_id       :integer
#  enrollment_id    :integer
#  resource_id      :integer
#  tool_consumer_id :integer
#  user_id          :integer
#

class Launch < ApplicationRecord
  belongs_to :context
  belongs_to :resource
  belongs_to :enrollment
  belongs_to :tool_consumer
  belongs_to :user

  has_one :credential, through: :tool_consumer, source: :credentials
end
