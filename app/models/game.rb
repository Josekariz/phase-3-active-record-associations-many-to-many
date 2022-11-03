class Game < ActiveRecord::Base
  has_many(:reviews)
  has_many(:users, through: :reviews)
end
# There are a couple important things to note when using the has_many macro with the through: option. Order matters — you must place the first has_many that references the join table above the second has_many that goes through that join table. This code won't work: