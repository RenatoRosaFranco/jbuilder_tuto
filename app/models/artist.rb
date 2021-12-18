# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  label      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artist < ApplicationRecord
  self.table_name  = 'artists'
  self.primary_key = 'id'

  has_many :albums

  def name_with_label
    "#{name} produced by #{label}"
  end
end
