# == Schema Information
#
# Table name: credentials
#
#  id               :bigint           not null, primary key
#  consumer_key     :string
#  consumer_secret  :string
#  enabled          :boolean          default(TRUE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  administrator_id :integer
#

class Credential < ApplicationRecord
  belongs_to :administrator
  has_many :consumptions, dependent: :destroy
  has_many :tool_consumers, through: :consumptions, source: :tool_consumer
  has_many :launches, through: :tool_consumers, source: :launch

  has_secure_token :consumer_key
  has_secure_token :consumer_secret

  def create_tool_provider(params = {})
    IMS::LTI::ToolProvider.new(consumer_key, consumer_secret, params)
  end

end
