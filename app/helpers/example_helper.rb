module ExampleHelper
  def players_select
    Player.all.map { |player| ["#{player.lastname} #{player.firstname}", player.id] }
  end

  def actions_select
    TypeAction.all.map { |item| [item.title, item.id] }
  end

  # def actions_select
  #   TypeAction.all.map { |item| [item.title, item.id] }
  # end
end
