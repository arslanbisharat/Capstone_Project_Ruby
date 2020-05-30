require_relative '../lib/loop.rb'
require 'colorize'
scraper = Scraper.new('https://www.simplyhired.com/search?q=junior+web+developer&l=&job=qv7hkzh7TcZD8BEHuKv9Eguc_mML6R1OujyCtaMQug7JaEnfmK10kA')
scraper.start

def prompt
  puts "Would you like to continue to see more vacancies? \n \n"
  puts "For continue \n Type 'y' or press 'Enter' \n \n"
  puts "To stop and quit \n Type 'n' or 'q' \n \n"
  loop do
    input = gets.chomp.downcase
    if ['y', ''].include?(input)
      @page += 1
      break
    elsif %w[n q].include?(input)
      puts " Hope you found your dream job! \n Thanks for using my scraper! You're on the right way)))".yellow.bold
      puts ' Happy coding!'.green.bold
      exit
    else
      puts "Oops! Invalid character! \n\n".red.bold
      puts "For continue \n Type 'y' \n \n"
      puts "To stop and quit \n Type 'n' \n \n"
      input
    end
    input
  end
end

def info
  @scraper = Scraper.new('https://www.simplyhired.com/search?q=junior+web+developer&l=&job=qv7hkzh7TcZD8BEHuKv9Eguc_mML6R1OujyCtaMQug7JaEnfmK10kA')
  @scraper.start
  @total = @scraper.instance_variable_get(:@total)
  @last_page = @scraper.instance_variable_get(:@last_page)
  puts " Overall #{@total}  jobs in #{@last_page} pages \n\n Let's see results! \n\n"
  sleep(1.5)
  @page = 1
  @collect = Loop.new(@total, @page)
end

def results
  info
  while @page <= @total
    puts "\t Page Number: #{@page} \n\n"
    sleep 0.5
    @collect.scraper
    list = @collect.instance_variable_get(:@list)
    i = 0
    while i < list.count
      puts " Found jobs \n\n"
      puts " Position: #{list[i][:position]}".yellow.bold
      puts " Company: #{list[i][:company]} \n Location: #{list[i][:location]}".magenta.bold
      puts " Salary: #{list[i][:salary]}".green.bold
      puts " Job link: https://www.simplyhired.com#{list[i][:url]}".cyan.bold
      puts ''
      sleep(0.1)
      i += 1
    end
    prompt
    sleep(0.5)
  end
end
results
