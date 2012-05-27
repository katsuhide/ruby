# <目的>
# + 指定されたcsvファイルを読み込み、inset文に変換する
# <やりたいこと>
# + csvファイルを読み込む
# + 読み込んだデータをinsert文として整形して出力する
# <Point>
# + 読み込む対象のファイルは？
#   →とりあえず１ファイルとする。引数の１つ目で指定する
# + すべてのデータを読み込むか？
#   →１行目はヘッダー行とする
#    ヘッダー行のカラム名で指定された項目のみ取り込む
# + 型はどうするか
#   →案１：ヘッダー行の次の行で指定する
#    案２：とりあえずすべてそのまま取り込む
#     →一旦案２

require 'csv'

# 対象のcsvファイルを指定
TARGET_FIlE = 'data.csv'

# insert対象のテーブルをセット
TARGET_TABLE = 'book'

# ファイルを読み込む
reader = CSV.open(TARGET_FILE, "r")

# ヘッダー行をスキップ
reader.shift
# insert文に変換
insert_sql = [][]
reader.each { |row|
# insert into TABLE_NAME values ('hoge', 'fuga', ...); 
  sql = "insert into " + TARGET_TABLE + " values ('" + row.join("' ,'") + "');" 
  insert_sql.add 
  }
