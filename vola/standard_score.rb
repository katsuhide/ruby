def standard_score(point, avg, vola)
    (point - avg) / vola * 10 + 50
end

