require 'mysql2'

# connect database
client = Mysql2::Client.new(:host => "localhost", :username => "hoge", :database => "fuga")

# create table
create_sql = "create table test ( 
  id int(10),
  hoge varchar(50),
  fuga varchar(50)
  )"
result = client.query(create_sql)
  
# select
select_sql = 'select * from test'
result = client.query(select_sql)
result.each do |raw|
  puts raw
end

# insert
insert_sql = 'insert into test (id, hoge, fuga) values (1, "yamada", "taro")'
result = client.query(insert_sql)

# select
result = client.query(select_sql)
result.each do |raw|
  puts raw
end

# update
update_sql = 'update test set hoge = "kato"'
result = client.query(update_sql)

# select
result = client.query(select_sql)
result.each do |raw|
  puts raw
end

# drop table
drop_sql = "drop table test"
result = client.query(drop_sql)
