require 'spec_helper'

describe Resource do
  subject { create :resource }

  describe 'validations' do
    context 'url' do
      it 'should be an url' do
        subject.url = 'http://rails-girls.nl'
        expect(subject).to be_valid
      end

      it 'should not be valid if a relative url is given' do
        subject.url = 'rails-girls.nl'
        expect(subject).not_to be_valid
      end
    end
  end

  context '.upvote' do
    it 'upvoting will increase upvote by one' do
      subject.upvote
      expect(subject.upvotes).to eq(6)
    end
  end

  context '.downvote' do
    it 'downvoting will decrease by one' do
      subject.downvote
      expect(subject.downvotes).to eq(6)
    end
  end

  context '.votes' do
    before do
      subject.downvotes = 3
    end

    it 'votes should be upvotes minus downvotes' do
      expect(subject.votes).to eq(2)
    end

  end
end
