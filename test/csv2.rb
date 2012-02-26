input_file = 'file.csv'
output_file = input_file.sub(/\.csv/i, "（変換済）.csv")

open(input_file, "r") { |input|
  open(output_file, "w") { |output|
    while line = input.gets
      data = line.split(/\s*,\s*/).map{|s| s.gsub('"', '')}
      yubin = data[2]
      ken = data[6]
      shi = data[7]
      banchi = data[8]
      banchi = "" if banchi == "以下に掲載がない場合"
      str = %Q{"#{yubin}","#{ken}#{shi}#{banchi}"}
      puts str
      output.puts str
    end
  }
}
