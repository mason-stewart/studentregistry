class Student < ActiveRecord::Base

  include RocketPants::Cacheable

  attr_accessible :first_name, :info, :last_name, :photo
  serialize :multi_wrong, Hash
end
