require './test/test_helper'
require './lib/crack'
require 'mocha/minitest'

class CrackTest < Minitest::Test

  def test_cracking_with_date
    encrypted_message = "muy'bfqd mpi:fdxnfgd ropryknx bpxdcinx!pnto"
    expected = "don't forget: the world is your oyster! end"

    assert_equal expected, Crack.decrypt(encrypted_message, "170919")
  end

end
