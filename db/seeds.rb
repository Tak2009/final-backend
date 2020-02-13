
require 'net/http'
require 'uri'
require 'json'

# original source: https://data.opendatasoft.com/explore/dataset/world-heritage-list%40public-us/api/?disjunctive.states
# latin america
uri = URI.parse('https://data.opendatasoft.com/api/records/1.0/search/?dataset=world-heritage-list%40public-us&rows=30&facet=category&facet=region&facet=states&refine.region=Latin+America+and+the+Caribbean')
json = Net::HTTP.get(uri) #NET::HTTPを利用してAPIを呼ぶ
result = JSON.parse(json) #返ってきたjsonデータをrubyの配列に変換するためのライン
sites = result['records']
# Latinamerica.create(category: sites[0]['fields']['category'])

# byebug

# Latinamerica.delete_all
sites.each do |site| Latinamerica.create(
        category: site['fields']['category'],
        id_number: site['fields']['id_number'],
        region: site['fields']['region'],
        site: site['fields']['site'],
        states: site['fields']['states'],
        image_url: site['fields']['image_url'],
        location: site['fields']['location'],
        short_description: site['fields']['short_description'],
        http_url: site['fields']['http_url']
    )
end


l1 = Latinamerica.find(1)
l2 = Latinamerica.find(2)
l3 = Latinamerica.find(3)

r1 = Review.create(:latinamerica_id => l1.id, :comment => "good enough", :rating => 5)
r2 = Review.create(:latinamerica_id => l1.id, :comment => "horrible", :rating => 1)
r3 = Review.create(:latinamerica_id => l1.id, :comment => "amazing", :rating => 5)
r4 = Review.create(:latinamerica_id => l1.id, :comment => "hmmmmm")
r5 = Review.create(:latinamerica_id => l1.id, :comment => "awesome", :rating => 5)

r6 = Review.create(:latinamerica_id => l2.id, :comment => "bad enough", :rating => 1)
r7 = Review.create(:latinamerica_id => l2.id, :comment => "horrible", :rating => 1)
r8 = Review.create(:latinamerica_id => l2.id, :comment => "amazingly horrible", :rating => 1)
r9 = Review.create(:latinamerica_id => l2.id, :comment => "hmmmmm, can not believe it")
r10 = Review.create(:latinamerica_id => l2.id, :comment => "damn", :rating => 1)

r11 = Review.create(:latinamerica_id => l3.id, :comment => "too good", :rating => 5)
r12 = Review.create(:latinamerica_id => l3.id, :comment => "horrible", :rating => 1)
r13 = Review.create(:latinamerica_id => l3.id, :comment => "amazingly horrible", :rating => 5)
r14 = Review.create(:latinamerica_id => l3.id, :comment => "damn", :rating => 1)
r15 = Review.create(:latinamerica_id => l3.id, :comment => "nutral", :rating => 3)