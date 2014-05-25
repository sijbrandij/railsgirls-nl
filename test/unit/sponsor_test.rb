require 'test_helper'

class SponsorTest < ActiveSupport::TestCase

  test 'should not save empty sponsor' do
    sponsor = Sponsor.new
    refute sponsor.valid?
    assert sponsor.errors[:name].any?
    assert sponsor.errors[:url].any?
  end

  test 'should not save sponsor with non-unique name' do
    sponsor = Sponsor.new(name: 'Supercool sponsor', description: 'test', url: 'http://supercoolsponsor.com')
    refute sponsor.valid?
    assert sponsor.errors[:name].any?
    assert_equal "has already been taken", sponsor.errors[:name].first
  end

  test 'should not save sponsor with invalid url' do
    sponsor = Sponsor.new(name: 'Sponsor', description: 'description', url: 'www.sponsor.com')
    refute sponsor.valid?
    assert sponsor.errors[:url].any?
  end
end
