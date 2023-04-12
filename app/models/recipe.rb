class Recipe < ApplicationRecord
  validates_presence_of :id
  validates_uniqueness_of :id
  validates_presence_of :name
  validates_presence_of :ingredients
  validates_presence_of :image
  self.primary_key = :id

  has_many :day_plan_recipes
  has_many :day_plans, through: :day_plan_recipes
end