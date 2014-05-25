require 'test_helper'

class SponsorTest < ActiveSupport::TestCase
  test 'should not create sponsor without a name' do
    sponsor = Sponsor.new
    refute sponsor.valid?
    assert sponsor.errors[:name].any?
  end
end
