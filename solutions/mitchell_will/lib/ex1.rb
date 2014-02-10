class Unique

  def self.find(to_check)
    counts(to_check).keys.join
  end

  def self.counts(to_check)
    to_check.chars.each_with_object(Hash.new(0)) do |char, counts|
      counts[char] += 1
    end
  end

  def self.is_uniq(to_check)
    c = counts(to_check)
    c.values.all? do |value|
      value == 1
    end
  end

end
