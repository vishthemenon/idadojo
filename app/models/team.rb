class Team < ActiveRecord::Base
  attr_accessible :name
  has_many :users
  has_and_belongs_to_many :checkpoints
end
