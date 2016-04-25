require 'rubygems'
require 'nokogiri'
require 'open-uri'

products = []
page = Nokogiri::HTML(open("http://www.nix.ru/price/price_list.html?section=network_solutions_nix_all#cid=336&fn=336&page=all&set_id=355046a697d711e5a8b3002590c35102&sort=0&thumbnail_view=2"))
page.encoding = 'utf-8'
page.css('table#search_results tr').select.each do |el|

  product = {}

  el.css('span[id^=good_name]').each do |el1|
    product["Name"] = el1.text
  end
  el.css('td[itemprop^=offers]').each do |el2|
    product["Price"] = el2.text
  end
  products << product
end

puts products