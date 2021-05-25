module FactoryHelpers
  extend self

  def random_string
    string = ('a'..'z').to_a.shuffle.join
    string[0..5]
  end

  def random_number
    rand(1007) + 20
  end
end
