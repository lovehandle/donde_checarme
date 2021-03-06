# == Schema Information
#
# Table name: pregunta
#
#  id         :integer          not null, primary key
#  texto      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  type       :string(255)
#

class Pregunta < ActiveRecord::Base

  def is_in_cat?(query)
    !Category.where("tipo LIKE ?",  "#{query}%").empty?
  end
end
