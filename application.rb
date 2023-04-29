require "./statement"

assets = Statement.new("資産", ["現金", "売掛金"])
assets.show
assets.check("現金")

