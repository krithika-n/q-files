// loadTables.q is loaded into memory before calling this function

getAggregateByMeter:{select Total:sum measure, AveragePerHour:avg measure, StandardDeviation:dev measure by mid from readings}