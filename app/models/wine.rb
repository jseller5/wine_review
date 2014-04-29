class Wine < ActiveRecord::Base

  has_many :reviews, dependent: :destroy

  VARIETALS = ['Merlot', 'Malbec', 'Cabernet Sauvignon']
 
  has_many :log_entries, dependent: :destroy
  validates :name, :year, :country, presence: true
  validates :varietal, :inclusion => { :in => VARIETALS }
  validates :year,
numericality: { only_integer: true, greater_than_or_equal_to: 0 }

def average_rating
  if log_entries.loaded?
    log_entries.map(&:rating).compact.average
  else
    log_entries.average(:rating)
  end
end
end