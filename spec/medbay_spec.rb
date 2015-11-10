require 'spec_helper'
require 'json'

describe Medbay do
  before do
    @fake_check_response = [{'passed' => true, 'name' => 'Redis'}]
  end

  it 'has a version number' do
    expect(Medbay::VERSION).not_to be nil
  end

  it 'runs provided tests and returns the results' do
    get '/'
    expect(last_response.status).to eql(200)
    expect(JSON.parse(last_response.body)).to eql(@fake_check_response)
  end

  it 'returns benchmark data' do
  end

  it 'responds to json' do
  end

  it 'responds to html' do
  end
end
