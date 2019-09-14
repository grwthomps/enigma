class Encryption

  def self.shift_nums_helper(key_arr, date_last_four)
    shift_nums_arr = []
    shift_nums_arr << (key_arr[0] + key_arr[1]).to_i + date_last_four[0].to_i
    shift_nums_arr << (key_arr[1] + key_arr[2]).to_i + date_last_four[1].to_i
    shift_nums_arr << (key_arr[2] + key_arr[3]).to_i + date_last_four[2].to_i
    shift_nums_arr << (key_arr[3] + key_arr[4]).to_i + date_last_four[3].to_i
  end

  def self.encrypt(message_input, key, date)
    alpha_arr = ("a".."z").to_a << " "
    orig_message_arr = message_input.split('')
    key_arr = key.split('')
    date_last_four = ((date.to_i * date.to_i).to_s)[-4..-1]
    shift_nums_helper(key_arr, date_last_four)
  end

end
