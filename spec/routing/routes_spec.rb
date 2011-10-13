require 'spec_helper'

describe 'Routes' do
  it 'should generate the correct root path' do
    get('/').should route_to('episodes#index')
  end

  it 'should generate catalan routes for episodes' do
    get('/episodis').should route_to('episodes#index')
    get('/episodis/30-semantic-2').should route_to('episodes#show', :id => '30-semantic-2')
  end
end

