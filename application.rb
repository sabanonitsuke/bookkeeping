require "./statement"

assets = Statement.new("資産", ["現金", "預金", "土地", "備品", "車両運搬具", "未収入金"])
liabilities = Statement.new("負債", ["買掛金", "未払金"])
equities = Statement.new("純資産", ["資本金", "繰越利益剰余金", "利益準備金"])
expenses = Statement.new("費用", ["支払利息", "仕入"])
revenues = Statement.new("収益", ["受取利息", "売上", "固定資産売買益"])
statements = [assets, liabilities, equities, expenses, revenues]

puts "行いたいことを選択してください"
puts "【0】勘定科目から調べる"
puts "【1】5大科目から一覧を見る"
selected = gets.chomp.to_i

if selected == 0
  puts "勘定科目を入力してください"
  statement_exist = false
  selected = gets.chomp
  statements.each do |statement|
    if statement.check(selected)
      statement_exist = true
    end
  end
  if statement_exist == false
    puts "#{selected}は存在しない勘定科目です"
  end
elsif selected == 1
  puts "一覧を見たい5大科目を入力してください"
  selected = gets.chomp
  case selected
  when "資産"
    assets.show
  when "負債"
    liabilities.show
  when "純資産"
    equities.show
  when "費用"
    expenses.show
  when "収益"
    revenues.show
  else
    puts "見つかりませんでした"
  end
end