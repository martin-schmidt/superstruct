require 'spec_helper'

describe SuperStruct do
  class Band < SuperStruct.new(:name, :genre); end
  let(:beatles) { 'The Beatles' }
  let(:rock)    { 'Rock' }

  it 'has a version number' do
    expect( Superstruct::VERSION ).not_to be nil
  end

  it 'raises ArgumentError' do
    expect { SuperStruct.new }.to raise_error(ArgumentError)
  end

  it 'initializes with empty hash' do
    expect( Band.new({}).kind_of? Struct ).to be true
  end

  it 'raises ArgumentError argument is not a Hash' do
    expect { Band.new('string') }.to raise_error(ArgumentError)
  end

  it 'initializes with hash' do
    hash = {name: 'The Beatles', genre: 'Rock' }
    expect( Band.new(hash).name ).to eql 'The Beatles'
  end

  it 'inherits to be kind of Struct' do
    expect( Band.new.kind_of? Struct ).to be true
  end

  it 'inherits argument' do
    expect( Band.method_defined? 'name' ).to be true
  end
end
