require './lib/date_generator'

class RandomGenerator < DateGenerator

  def self.create_key
    rand(100000).to_s.rjust(5, "0")
  end

end
