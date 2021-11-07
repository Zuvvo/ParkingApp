class Spot < ApplicationRecord
  validates :number, presence: true

  def set(number)
    puts number
    self.number = number
    self.book_time = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
  end

  def test
    puts 'X'
  end

end