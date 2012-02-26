require "csv"

reader = CSV.open("test2.csv", "r")

reader.each{|row|
    puts row.join("<>")
}

=begin
CSV.open("test2.csv", "r") do |row|
    puts row.join("<>")
end
=end
