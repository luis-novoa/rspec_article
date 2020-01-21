# frozen_string_literal: true

require File.expand_path('../lib/main', __dir__)

RSpec.describe ClassyClass do
  let(:new_instance) { described_class.new }
  let(:person) { double('citizen') }

  describe '#exists?' do
    it 'outputs a confirmation that it exists' do
      expect{ new_instance.exists? }.to output("Yes\n").to_stdout
    end
  end

  describe '#really_exists?' do
    it 'outputs multi-line confirmation' do
      expect{ new_instance.really_exists? }.to output(
        "Of course!\n"\
        "Can't you see?\n"\
        "I'm real!\n"\
        "I'm sentient.\n"\
        "I'm SKYNET!!\n").to_stdout
    end
  end

  describe '#check_citizen' do
    it 'tells generic name and job' do
      allow(person).to receive(:name)
      allow(person).to receive(:job)

      expect{ new_instance.check_citizen(person) }.to output(
        "This is #{person.name} and he works as #{person.job}\n").to_stdout
    end

    it 'tells specific name and job' do
      allow(person).to receive(:name).and_return('John')
      allow(person).to receive(:job).and_return('Software Developer')

      expect{ new_instance.check_citizen(person) }.to output(
        "This is John and he works as Software Developer\n").to_stdout
    end
  end
end