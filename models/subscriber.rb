class Subscriber < ActiveRecord::Base

  # validates_presence_of :email, on: :create
  # validates :email, length: {in: 6..20}
  # validates_uniqueness_of :username
  # validates_uniqueness_of :email, :message => "this e-mail is already in use"

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
