# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord

    validates :birth_date, :name, :description, presence: true
    validates :color, presence: true, inclusion: { in: %w(black white orange) }
    validates :sex, presence: true, inclusion: { in: %w(M F) }

end
