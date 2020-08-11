
<p align="center"># Ruby-Capstone-Project-Scraper
Ruby Capstone Project - Scraper (created by Arslan Bisharat)</p>

# Web Scraping
## Definition 
Web scraping, web harvesting, or web data extraction is data scraping used for extracting data from websites. Web scraping software may access the World Wide Web directly using the Hypertext Transfer Protocol, or through a web browser. While web scraping can be done manually by a software user, the term typically refers to automated processes implemented using a bot or web crawler. It is a form of copying, in which specific data is gathered and copied from the web, typically into a central local database or spreadsheet, for later retrieval or analysis.


## Techniques 
Web scraping is the process of automatically mining data or collecting information from the World Wide Web. It is a field with active developments sharing a common goal with the semantic web vision, an ambitious initiative that still requires breakthroughs in text processing, semantic understanding, artificial intelligence and human-computer interactions. Current web scraping solutions range from the ad-hoc, requiring human effort, to fully automated systems that are able to convert entire web sites into structured information, with limitations.

# About Project
The purpose of this project is to develop an scraper tool to achieve web-scrapping. This was achieved using Ruby, Open-uri and Nokogiri gem. Byebug debugger is used to check the values of the scrapped data from the page. 
In this project, I created a scraper which extracts job advertisements for junior web developers from the [Simplyhired.com](https://www.simplyhired.com). 


# Built With
 - Ruby 2.7.1
 - Nokogiri 1.11.0.rc2
 - Open-uri
 - Colorize 0.8.1
 - Byebug 11.1.3
 - RSpec 3.9
 - Rubocop 0.81.0
 - VSCode editor 1.45.1

# Getting Started
To get started, you should first get this file in your local machine by downloading this project or typing.
`
git clone https://github.com/arslanbisharat/Capstone_Project_Ruby/
`

## Prerequisites
    Ruby installed on local machine
    Text editor (preferably: VSCode, Atom, Sublime)
    Git

## Setup
   If you have installed `Ruby` on your machine:
   1. Clone the project into your local machine using `git clone` command or download the zip file.
   2. Go into the project directory using `cd directory name` command.
   3. Install required gems by using `gem install <gem name>`
   - `gem install nokogiri`
   - `gem install colorize`
   4. From the root directory type `bin/main.rb` command.
   5. Run command `rspec <file name>` to test the various methods in the classes.
   
## Running the scraper
    When you run the project it will show you job advertisements on the selected page, then prompts the user to see more or stop. If you want to see more results you can press the 'y' button or 'Enter/Return' key. If you want to stop or found a job that matches you, then press the 'n' or 'q' button. The scraping process will be stopped.
    In job advertisements you can found information about job title, hiring company and its location, estimated salary per year and the link about job descriptions. If you interest in any job you can go to the job url and apply for the job.

# Contributing

:handshake: Contributions, issues and feature requests are welcome! 
Start by:

    1. Forking the project
    2. Cloning the project to your local machine
    3. cd into the project directory
    4. Run git checkout -b your-branch-name
    5. Make your contributions
    6. Push your branch up to your forked repository
    7. Open a Pull Request with a detailed description to the development branch of the original project for a review

Please feel free to contribute to any of these!

Feel free to check the [issues page](https://github.com/arslanbisharat/Capstone_Project_Ruby//issues).

👤 **Muhammad Arslan**

- Github: [@githubhandle](https://github.com/arslanbisharat)
- Twitter: [@twitterhandle](https://twitter.com/arslan_bisharat-2020bb156)
- Linkedin: [linkedin](https://www.linkedin.com/in/muhammad-arslan-2020bb156)

# Show your support!

Give a :star2: if you like this project! :blush:

📝 Copyright

## Acknowledgments

> - [Microverse](https://www.microverse.org/)
> - [Rubocop](https://docs.rubocop.org/en/stable/)
> - [Nokogiri](https://nokogiri.org/)

# 📝 License

This project is [MIT](LICENSE.md) licensed

Happy coding!
