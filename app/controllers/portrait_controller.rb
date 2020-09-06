class PortraitController < ApplicationController
  has_many :comments
  belongs_to :user
end
