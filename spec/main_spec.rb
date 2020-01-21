# frozen_string_literal: true

require File.expand_path('../lib/main', __dir__)

RSpec.describe ClassyClass do
  let(:new_calculator) { described_class.new }
  describe '#exists?' do
    it 'outputs a confirmation that it exists' do
      expect{ new_calculator.exists? }.to output("Yes\n").to_stdout
    end
  end

  describe '#really_exists?' do
    it 'outputs multi-line confirmation' do
      expect{ new_calculator.really_exists? }.to output(
        "Of course!\n"\
        "Can't you see?\n"\
        "I'm real!\n"\
        "I'm sentient.\n"\
        "I'm SKYNET!!\n").to_stdout
    end
  end
end