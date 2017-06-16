require "net/http"
require "uri"
require "json"
require 'csv'
DOC = 'file.csv'
uri = URI.parse("http://api.nytimes.com/svc/archive/v1/2017/4.json?api-key=0591740beb04400887ae52ed3bf76f64")
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)
response = http.request(request)
response.code             # => 301
check = JSON.parse(response.body)
check["response"]["docs"].each do |data|
  Article.create(web_url: data["web_url"], lead_paragraph: data["lead_paragraph"], headline: data["headline"]["main"], pub_date: data["pub_date"], word_count:data["word_count"] )
end


Article.create(web_url: "https://query.nytimes.com/gst/fullpage.html?res=9507E0DB113FF934A25752C0A96E9C8B63", lead_paragraph: "After months of speculation, Donald Trump and a majority of his cabinet have been revealed to be members of a powerful and ancient coven that has, through the harnessing of the darkest magicks, recently opened up a portal to the realm of D'Goskk, Plane of Misery. The portal, which has remained dormant for millenia under the thick ice sheets of Antarctica, has finally, through Trump's efforts to melt the ice caps, seen once more the light of day. Reporters in Antarctica report legions of Hellspawn marching forth from the portal, and seers all over the world predict dire times ahead for all mortal beings.", headline: "Trump Succeeds in Opening Ancient Portal, is Warlock", pub_date: "2017-01-17T00:00:00Z", word_count: 666)
