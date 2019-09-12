class RandomGenerator

  def self.create_key
    rand(100000).to_s.rjust(5, "0")
  end

  def self.create_date

  end

end
