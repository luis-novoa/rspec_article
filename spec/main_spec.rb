# frozen_string_literal: true

require File.expand_path('../lib/main', __dir__)

RSpec.describe ClassyClass do
  let(:new_calculator) { described_class.new }
  describe '#exists?' do
    it 'outputs a confirmation that it exists' do
      expect{new_calculator.exists?}.to output("Yes\n").to_stdout
    end
  end
end