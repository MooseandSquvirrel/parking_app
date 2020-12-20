class Car < ApplicationRecord
  validates_presence_of :login
  validates_presence_of :model
  validates_presence_of :year
  validates_presence_of :color
  validates_presence_of :licence_plate

  def self.search(search)
    key = "%#{search}%"
    where("login LIKE ? OR model LIKE ? OR year = ? OR color LIKE ? OR licence_plate LIKE ?",
                          key, key, key.to_i, key, key).order(:login)
  end

  def self.search_by_login(login)
    where("login LIKE ?", "%#{login}%").order(:created_at)
  end

end
