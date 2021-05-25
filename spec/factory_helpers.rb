module FactoryHelpers
  extend self

  def random_string
    string = ('a'..'z').to_a.shuffle.join
    string[0..5]
  end
end
