class Wine < ActiveRecord::Base
  VARIETALS = ['Merlot', 'Malbec', 'Cabernet Sauvignon']
 
  has_many :log_entries, dependent: :destroy
  validates :name, :year, :country, presence: true
  validates :varietal, :inclusion => { :in => VARIETALS }
  validates :year,
numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
