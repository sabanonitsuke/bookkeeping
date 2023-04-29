class Statement
  #勘定科目の種類ごとに保存する
  def initialize(name, subjects)
    @name = name
    @subjects = subjects
  end

  def show
    puts @name + "は以下です"
    @subjects.each do |subject|
      puts subject
    end
  end
end

