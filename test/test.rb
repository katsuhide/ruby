#! ruby -Ku
require 'csv'

path = "file.csv"
new_csv = "hoge.csv"
new_csv2 = "hoge2.csv"

rows=[]
hoge = CSV.generate(new_csv2) 

CSV.open(path, "r") do |row|
    str = row[0].to_s
    #str = row
    #rows << str.to_s
    rows.push(str)
    hoge << str
end

CSV.generate(new_csv) do |writer|
    #writer << rows
    rows.each{|row|
        puts row
        writer << row
    }
end
