require "csv"
reader = CSV.open("file.csv", "r")
header = reader.take(1)[0]

T = Hash::new
header.each do |attr|
    T[attr.strip] = []
end

reader.each do |row|
    i = 0
    row.each do |item|
        T[header[i].strip].push(item.strip)
        i = i + 1
    end
end
=begin
p header
p "===================================="
reader.each do |row|
    p row
end
=end
