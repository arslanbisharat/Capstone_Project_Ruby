require 'nokogiri'
require 'open-uri'
class Scraper
  attr_reader :link
  def initialize(link)
    @link = link
  end

  def start
    url = @link
    doc = ::OpenURI.open_uri(url)
    html_raw = doc.read
    parsed_page = Nokogiri::HTML(html_raw)
    jobs_list = parsed_page.css('div.SerpJob-jobCard')
    pages(parsed_page, jobs_list)
  end

  private

  def pages(parsed_page = nil, jobs_list = nil)
    @page = 1
    per_page = jobs_list.count
    @total = parsed_page.css('span.CategoryPath-total').text.gsub(',', '').to_i
    @last_page = (@total.to_f / per_page).ceil
  end
end
