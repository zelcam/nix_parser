require 'rubygems'
require 'writeexcel'
require 'json'

workbook = WriteExcel.new('parser.xls')
worksheet = workbook.add_worksheet
file = File.read('price.json')
data_hash = JSON.parse(file)
i = 0
data_hash["goods"].each do |iter|
  worksheet.write(i, 0, iter["name"])
  worksheet.write(i, 1, iter["min_price"].to_i)
  i += 1
end

workbook.close