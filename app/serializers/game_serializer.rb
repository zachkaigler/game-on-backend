class GameSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :users, if: :condition
  has_many :groups, if: :condition
  has_many :interests, if: :condition

  def condition
    @instance_options[:flag] != "restrict"
  end

end
