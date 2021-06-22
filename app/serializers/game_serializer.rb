class GameSerializer < ActiveModel::Serializer
  attributes :id, :name
  attribute :users, if: :for_show
  has_many :groups, if: :for_show
  has_many :interests, if: :for_show

  def condition
    @instance_options[:flag] != "restrict"
  end

  def for_show
    @instance_options[:flag] == "show"
  end

end
