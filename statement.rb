class Statement
  #勘定科目の種類ごとに保存する
  def initialize(name, subjects)
    @name = name
    @subjects = subjects
  end

  def show
    puts "【#{@name}】に当てはまるのは以下です"
    @subjects.each do |subject|
      puts subject
    end
  end

  def check(name)
    if @subjects.include?(name)
      puts "#{name}は【#{@name}】です"
    end
  end
end