require 'spec_helper'

describe ResourcesController do

  describe '#new' do
    before { get :new }

    it 'responds with success' do
      response.should be_success
    end

    it 'renders template new' do
      response.should render_template :new
    end
  end
end
