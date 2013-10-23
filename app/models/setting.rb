require 'bcrypt'

class Setting < ActiveRecord::Base

  attr_accessible :hashed_password
  attr_accessible :old_password, :new_password, :new_password_confirmation
  attr_accessor :old_password, :new_password, :new_password_confirmation

  validate :old_password_must_be_valid, :if => :password_changed?
  validates :new_password, :confirmation => true,
                           :if => :password_changed?
  before_save :hash_new_password, :if => :password_changed?

  @@instance = Setting.first

  def self.instance()
    if not @@instance
      @@instance = Setting.new
      @@instance.save
    end
    return @@instance
  end

  def initialize(attributes = nil, options = {})
    super
    # see seeds.rb
    self.hashed_password ||= BCrypt::Password.create("admin")
  end

def password_changed?
      (self.respond_to? :new_password) && !self.new_password.blank?
  end

  private

  def hash_new_password
    if self.new_password
      self.hashed_password = BCrypt::Password.create(self.new_password)
    end
  end

  def old_password_must_be_valid
    unless password_is_valid?(self.old_password)
      errors.add(:old_password, "must be valid")
    end
  end

end
