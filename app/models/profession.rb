class Profession < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :name
end
