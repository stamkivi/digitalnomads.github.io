require 'minitest/spec'
require 'minitest/autorun'
require_relative '../helpers/wiki_helpers'

describe WikiHelpers do
  let(:str ) { "Take care a pet and get a free retreat" }
  it 'should replace all spaces' do
    WikiHelpers.generate_id(str).must_include "take_care_a_pet_and_get_a_free_retreat"
  end

  it 'must start with modal_' do
    WikiHelpers.generate_id(str).must_match /^modal_.*/
  end

  it 'should diwnsize string to 64 characters' do
    assert WikiHelpers.generate_id(str*3).delete('modal_').length <= 64
  end
end