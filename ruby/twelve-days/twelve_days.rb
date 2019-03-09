module TwelveDays
  DAYS = %w[nil first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth].freeze
  COUNTS = %w[nil a two three four five six seven eight nine ten eleven twelve].freeze
  GIFTS = [
    nil,
    'Partridge in a Pear Tree',
    'Turtle Doves',
    'French Hens',
    'Calling Birds',
    'Gold Rings',
    'Geese-a-Laying',
    'Swans-a-Swimming',
    'Maids-a-Milking',
    'Ladies Dancing',
    'Lords-a-Leaping',
    'Pipers Piping',
    'Drummers Drumming'
  ].freeze
  private_constant :DAYS, :COUNTS, :GIFTS

  def self.song
    1.upto(DAYS.size - 1)
     .map(&method(:verse))
     .join("\n")
  end

  private

  def self.verse(n)
    "On the #{DAYS[n]} day of Christmas my true love gave to me: #{gifts(n)}.\n"
  end

  def self.gifts(n)
    to_sentence(gifts_with_count(n))
  end

  def self.gifts_with_count(n)
    n.downto(1).map { |idx| "#{COUNTS[idx]} #{GIFTS[idx]}" }
  end

  def self.to_sentence(gifts)
    gifts.join(', ').sub(', a', ', and a')
  end
end