#! /usr/bin/ruby -Ku
require "csv"

a = ["1", "ABC", "abc"]
b = ["2", "DEF", "def"]
c = ["3", "GHI", "あああ"]
x = [a, b, c]
x = [a]

CSV::Writer.generate("hoge.csv") do |writer|
    x.each{|row|
        puts row
        puts "---------"
        str = row[2]
        puts str
        puts "========="
        writer << str
    }
end
=begin
CSV.generate("test2.csv"){|writer|
    x.each{|row|
        writer << row
    }
}
=end
