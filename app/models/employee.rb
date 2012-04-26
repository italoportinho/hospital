class Employee < ActiveRecord::Base
  attr_accessible :contact, :cpf, :name

  has_many :professions
end
