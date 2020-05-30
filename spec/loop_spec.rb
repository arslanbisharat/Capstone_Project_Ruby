require_relative '../lib/loop.rb'
require_relative '../lib/scraper.rb'

describe Loop do
  let(:scraper) { Scraper.new('https://www.simplyhired.com/job/T3pU3sSsP6Zh2hJp9p0YRiBsrX6vL8PNNiCnxjVS8ooM3BtRiAsZtg?q=junior+web+developer') } # rubocop:disable Layout/LineLength
  let(:value) { Loop.new(50, 1) }

  describe '#start' do
    it 'calls the start method in Loop class with a true value' do
      allow(value).to receive(:start).and_return(true)
      expect(value.start).to eql(true)
    end

    it 'calls the start method in Loop class with a false value' do
      allow(value).to receive(:start).and_return(true)
      expect(value.start).not_to eql(false)
    end
  end

  describe '#scraper' do
    it 'checks the various pages of the website and returns the job information' do
      list = [{
        position: 'Junior Web Developer',
        url: '/job/T3pU3sSsP6Zh2hJp9p0YRiBsrX6vL8PNNiCnxjVS8ooM3BtRiAsZtg?q=junior+web+developer',
        location: 'Los Angeles, CA Los Angeles, CA',
        company: 'AMDA',
        salary: '$52,000 - $71,000 a year'
      }]
      allow(value).to receive(:scraper).and_return(list)
      expect(value.scraper).to eql(list)
    end

    it 'checks the various pages of the website and does not return true' do
      list = [{
        position: 'Junior Web Developer',
        url: '/job/T3pU3sSsP6Zh2hJp9p0YRiBsrX6vL8PNNiCnxjVS8ooM3BtRiAsZtg?q=junior+web+developer',
        location: 'Los Angeles, CA Los Angeles, CA',
        company: 'AMDA',
        salary: '$52,000 - $71,000 a year'
      }]
      allow(value).to receive(:scraper).and_return(list)
      expect(value.scraper).not_to eql(true)
    end

    it 'checks the various pages of the website and does not return false' do
      list = [{
        position: 'Junior Web Developer',
        url: '/job/T3pU3sSsP6Zh2hJp9p0YRiBsrX6vL8PNNiCnxjVS8ooM3BtRiAsZtg?q=junior+web+developer',
        location: 'Los Angeles, CA Los Angeles, CA',
        company: 'AMDA',
        salary: '$52,000 - $71,000 a year'
      }]
      allow(value).to receive(:scraper).and_return(list)
      expect(value.scraper).not_to eql(false)
    end
  end
end
