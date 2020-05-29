require_relative '../lib/scraper.rb'

class Loop < Scraper
  attr_reader :total, :page
  def initialize(total, page)
    @total = total
    @page = page
  end

  def start
    iteration_url = "https://www.simplyhired.com/search?q=junior+web+developer&pn=#{page}"
    iteration_doc = ::OpenURI.open_uri(iteration_url)
    iteration_unparsed_page = iteration_doc.read
    iteration_parsed_page = Nokogiri::HTML(iteration_unparsed_page)
    iteration_parsed_page.css('div.SerpJob-jobCard')
  end

  def scraper
    @list = []
    iteration_jobs_list = start
    iteration_jobs_list.each do |x|
      jobs = { position: x.css('div.jobposting-title-container').css('a.card-link').text,
               url: x.css('div.jobposting-title-container').css('a')[0].attributes['href'].value,
               location: x.css('h3.jobposting-subtitle').css('span.jobposting-location').text,
               company: x.css('h3.jobposting-subtitle').css('span.jobposting-company').text,
               salary: x.css('div.SerpJob-metaInfo').css('span.jobposting-salary').text.delete_prefix!('Estimated: ') }
      @list.push(jobs)
    end
    @page += 1
  end
end
