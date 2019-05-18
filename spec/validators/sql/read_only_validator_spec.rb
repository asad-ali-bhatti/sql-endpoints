# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SQL::ReadOnlyValidator, type: :model do
  let(:valid_str) { 'select * from abc_table' }
  let(:invalid_str) { 'drop table abc_table' }

  subject { described_class.new }

  describe '#valid?' do
    context 'when query string is readonly' do
      it 'returns true' do
        expect(subject.valid?(valid_str)).to be_truthy
      end
    end

    context 'when query is not readonly' do
      it 'returns false' do
        expect(subject.valid?(invalid_str)).to be_falsey
      end
    end
  end
end
