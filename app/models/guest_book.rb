class GuestBook < ActiveRecord::Base
  validates :name, :message, :presence => true
end
