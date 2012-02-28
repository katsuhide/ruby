# 渡された配列の標準偏差を算出するようにArrayを拡張
class Array
    # 要素の合計を算出する
    def sum
        inject(0.0){|r,i| r+=i.to_f}    
    end
    # 要素の平均を算出する
    def avg
        inject(0.0){|r,i| r+=i.to_f }/size
    end
    # 要素の分散を算出する
    def variance
        a = avg
        inject(0.0){|r,i| r+=(i.to_f-a)**2 }/size
    end
    # 要素の標準偏差を算出する
    def stddev
        Math.sqrt(variance)
    end
end