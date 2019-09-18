class Crack

  def self.decrypt(message_input, date)
    alpha_arr = ("a".."z").to_a << " "
    message_arr = message_input.split('')
    key_arr = []
    date_last_four = ((date.to_i * date.to_i).to_s)[-4..-1]

    abcd_arr = ["a", "b", "c", "d"]
    temp_arr = []
    message_arr.each do |letter|
      temp_arr << abcd_arr[0]
      abcd_arr.rotate!
    end

    shift_letters = temp_arr.pop(4)
    temp_message_arr = message_input.split('')
    message_last_four = temp_message_arr.pop(4)
    dec_key = [" ", "e", "n", "d"]
    shift_nums_hash = {}

    message_last_four.each do |character|
      shift_1 = alpha_arr.index(character)
      shift_2 = alpha_arr.index(dec_key[0])
      shift_nums_hash[shift_letters[0]] = shift_1 - shift_2
      shift_letters.rotate!
      dec_key.rotate!
    end

    shift_nums_hash.each do |key, value|
      if value < 0
        shift_nums_hash[key] += 27
      end
    end

    shift_nums_arr = [shift_nums_hash["a"], shift_nums_hash["b"], shift_nums_hash["c"], shift_nums_hash["d"]]

    dec_message = []
    message_arr.each do |character|
      if alpha_arr.include?(character)
        shift_num = alpha_arr.index(character)
        shift_1 = alpha_arr.rotate(shift_num)
        shift_2 = shift_1.rotate(-(shift_nums_arr[0]))
        dec_message << shift_2[0]
        shift_nums_arr.rotate!
      else
        dec_message << character
        shift_nums_arr.rotate!
      end
    end
    dec_message.join
  end

end
