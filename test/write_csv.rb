#! /usr/bin/ruby -Ku
require "csv"

a = ["1", "ABC", "abc"]
b = ["2", "DEF", "def"]
c = ["3", "GHI", "あああ"]
x = [a, b, c]


CSV.generate("test2.csv"){|writer|
    str = []
    str.push a[0]
    str.push(a[2]) 
    writer << str 
    writer << b
    writer << c
}
=begin
    x.each{|row|
        puts row
        puts "---------"
        str = row[2]
        puts str
        puts "========="
        writer << str
    }
end
=end
=begin
CSV.generate("test2.csv"){|writer|
    x.each{|row|
        writer << row
    }
}
=end
