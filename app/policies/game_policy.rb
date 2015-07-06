class GamePolicy
  attr_reader :user, :game

  def initialize(user, game)
    @user = user
    @game = game
  end

  def new?
    user.admin?
  end

  def create?
    user.admin?
  end
end
