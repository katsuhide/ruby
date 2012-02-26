#! ruby -Ku
require 'csv'

path = "file.csv"
new_csv = "hoge.csv"

rows=[]

CSV.open(path, "r") do |row|
    rows.push(row)
end

CSV.generate(new_csv) do |writer|
    rows.each{|row|
        str = []
        str.push(row[0])
        str.push(row[3])
        str.push(row[4])
        str.push(row[6])
        str.push(row[7])
        str.push(row[8])
        writer << str
    }
end
