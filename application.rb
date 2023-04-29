class Statement
  #勘定科目の種類ごとに保存する
  def initialize(name, subjects)
    @name = name
    @subjects = subjects
  end
end