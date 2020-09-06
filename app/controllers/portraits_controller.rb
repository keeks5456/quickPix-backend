class PortraitsController < ApplicationController
  has_many :comments
  belongs_to :user
end
