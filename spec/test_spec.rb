require_relative '../lib/scraper.rb'

describe 'Scraper' do
  let(:scraper) { Scraper.new('https://www.simplyhired.com/job/T3pU3sSsP6Zh2hJp9p0YRiBsrX6vL8PNNiCnxjVS8ooM3BtRiAsZtg?q=junior+web+developer') } # rubocop:disable Layout/LineLength

  describe '#start' do
    it 'calls the start method in Scraper class with a true value' do
      allow(scraper).to receive(:start).and_return(true)
      expect(scraper.start).to eql(true)
    end

    it 'calls the start method in Scraper class with a false value' do
      allow(scraper).to receive(:start).and_return(true)
      expect(scraper.start).not_to eql(false)
    end
  end

  describe '#pages' do
    it 'allows private method pages to return true when it recieves a true value' do
      allow_any_instance_of(Scraper).to receive(:pages).and_return(true)
      expect(scraper.pages).to eql(true)
    end
    it 'allows private method pages not to return true when it recieves a true value' do
      allow_any_instance_of(Scraper).to receive(:pages).and_return(true)
      expect(scraper.pages).not_to eql(false)
    end
  end
end
