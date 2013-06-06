class Student < ActiveRecord::Base
  attr_accessible :first_name, :info, :last_name, :photo
  serialize :multi_wrong, Hash
end
