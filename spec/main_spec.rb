# frozen_string_literal: true

require File.expand_path('../lib/main', __dir__)

RSpec.describe ClassyClass do
  let(:stacey_instance) { described_class.new }
  let(:real_deal) { Citizen.new('John', 'Software Developer') }
  let(:double_trouble) { double('citizen') }

  describe '#exists?' do
    it 'outputs a confirmation that it exists' do
      expect{ stacey_instance.exists? }.to output("Yes\n").to_stdout
    end
  end

  describe '#really_exists?' do
    it 'outputs multi-line confirmation' do
      expect{ stacey_instance.really_exists? }.to output(
        "Of course!\n"\
        "Can't you see?\n"\
        "I'm real!\n"\
        "I'm sentient.\n"\
        "I'm SKYNET!!\n").to_stdout
    end
  end

  describe '#check_citizen' do
    it "tells double_trouble's generic name and job" do
      allow(double_trouble).to receive(:name)
      allow(double_trouble).to receive(:job)

      expect{ stacey_instance.check_citizen(double_trouble) }.to output(
        "This is #{double_trouble.name} and he works as #{double_trouble.job}\n").to_stdout
    end

    it "tells double_trouble's specific name and job" do
      allow(double_trouble).to receive(:name).and_return('John')
      allow(double_trouble).to receive(:job).and_return('Software Developer')

      expect{ stacey_instance.check_citizen(double_trouble) }.to output(
        "This is John and he works as Software Developer\n").to_stdout
    end

    it "tells double_trouble's specific name and job using expect" do
      expect(double_trouble).to receive(:name).and_return('John')
      expect(double_trouble).to receive(:job).and_return('Software Developer')

      expect{ stacey_instance.check_citizen(double_trouble) }.to output(
        "This is John and he works as Software Developer\n").to_stdout
    end

    it "tells real_deal's specific name and job" do
      expect{ stacey_instance.check_citizen(real_deal) }.to output(
        "This is John and he works as Software Developer\n").to_stdout
    end
  end

  describe '#sum' do
    it 'returns the sum of two numbers' do
      expect(stacey_instance.sum(1, 2)).to eq(3)
    end
  end

  describe '#change_name' do
    it "receive user input and change citizen's name" do
      
    end
  end
end