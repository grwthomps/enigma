require './lib/encryption'

class DateGenerator < Encryption

  def self.create_date
    Time.now.strftime('%d%m%y')
  end

end
