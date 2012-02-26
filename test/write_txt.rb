#! /usr/bin/ruby -Ku
require "csv"

a = ["1", "ABC", "abc"]
b = ["2", "DEF", "def"]
c = ["3", "GHI", "あああ"]
x = [a, b, c]

fo = open("hoge.csv", "w")
x.each{|row|
        str = "insert into HOGEHOGE " + row[1] + "," + row[2]
        fo.puts(str)
}
fo.puts
fo.close
