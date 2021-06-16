class GameSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :users, if: condition
  has_many :groups, if: condition
  has_many :interests, if: condition

  def condition
    if @instance_options[:flag] == "restrict"
      false
    else
      true
    end
  end

end
