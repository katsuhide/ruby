require 'csv'

a = ["1", "ABC", "abc"]
b = ["2", "DEF", "def"]
c = ["3", "GHI", "あああ"]
x = [a, b, c]

name = '4.csv'

def csv raw_data
    CSV::Writer.generate(output = "") do |csv|
       raw_data.each do |data|
           csv << data
        end
    end
    send_data(output, :type => 'text/csv', :filename => name)
end

puts 'hoge'
csv(x)

