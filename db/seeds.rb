require "net/http"
require "uri"
require "json"
require 'csv'
DOC = 'file.csv'
uri = URI.parse("http://api.nytimes.com/svc/archive/v1/1851/9.json?api-key=0591740beb04400887ae52ed3bf76f64")
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)
response = http.request(request)
response.code             # => 301
check = JSON.parse(response.body)
check["response"]["docs"].each do |data| 
  Article.create(web_url: data["web_url"], lead_paragraph: data["lead_paragraph"], headline: data["headline"]["main"], pub_date: data["pub_date"], word_count:data["word_count"] )
end




Article.create(web_url: "https://query.nytimes.com/gst/fullpage.html?res=9507E0DB113FF934A25752C0A96E9C8B63", lead_paragraph: "The former Golden Gloves champion Sadam Ali's Olympic future is in jeopardy as he awaits the backup sample results from a doping test that came back positive for cathine, a banned stimulant found in some cold medicines.Ali, a 19-year-old lightweight from New York who won the 2006 national Golden Gloves, tested positive at an exhibition in China in November. Jim Millman, the chief executive of USA Boxing, said Ali and five other American boxers had flulike symptoms in China.Penalties could range from a warning to a two-year suspension.", headline: "Lightweight Tests Positive", pub_date: "2008-01-17T00:00:00Z", word_count: 92)