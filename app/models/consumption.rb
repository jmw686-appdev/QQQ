# == Schema Information
#
# Table name: consumptions
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  credential_id    :integer
#  tool_consumer_id :integer
#

class Consumption < ApplicationRecord
  belongs_to :credential
  belongs_to :tool_consumer

end
