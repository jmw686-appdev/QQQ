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
  has_one :launch, dependent: :destroy
  has_many :submissions, dependent: :destroy
  belongs_to :context

end
