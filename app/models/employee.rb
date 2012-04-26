class Employee < ActiveRecord::Base
  attr_accessible :contact, :cpf, :name
end
