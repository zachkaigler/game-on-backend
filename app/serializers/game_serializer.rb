class GameSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :users, if: :condition
  has_many :groups, if: :condition
  has_many :interests, if: :condition

  # has_many :users
  # has_many :groups
  # has_many :interests

  def condition
    @instance_options[:flag] != "restrict"
  end

end
